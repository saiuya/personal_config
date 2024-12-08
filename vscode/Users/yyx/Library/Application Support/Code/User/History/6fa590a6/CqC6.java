package com.saiuya.blog.strategy.impl;

import cn.dev33.satoken.stp.StpUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.saiuya.blog.entity.User;
import com.saiuya.blog.entity.UserRole;
import com.saiuya.blog.enums.RoleEnum;
import com.saiuya.blog.mapper.UserMapper;
import com.saiuya.blog.mapper.UserRoleMapper;
import com.saiuya.blog.model.dto.SocialTokenDTO;
import com.saiuya.blog.model.dto.SocialUserInfoDTO;
import com.saiuya.blog.model.vo.request.CodeReq;
import com.saiuya.blog.strategy.SocialLoginStrategy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Objects;

/**
 * 抽象登录模板
 *
 * @author saiuya
 */
@Service
public abstract class AbstractLoginStrategyImpl implements SocialLoginStrategy {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserRoleMapper userRoleMapper;

    @Override
    public String login(CodeReq data) {
        User user;
        // 获取token
        SocialTokenDTO socialToken = getSocialToken(data);
        // 获取用户信息
        SocialUserInfoDTO socialUserInfoDTO = getSocialUserInfo(socialToken);
        // 判断是否已注册
        User existUser = userMapper.selectOne(new LambdaQueryWrapper<User>()
                .select(User::getId)
                .eq(User::getUsername, socialUserInfoDTO.getId())
                .eq(User::getLoginType, socialToken.getLoginType()));
        // 用户未登录过
        if (Objects.isNull(existUser)) {
            user = saveLoginUser(socialToken, socialUserInfoDTO);
        } else {
            user = existUser;
        }
        // 校验指定账号是否已被封禁，如果被封禁则抛出异常 `DisableServiceException`
        StpUtil.checkDisable(user.getId());
        // 通过校验后，再进行登录
        StpUtil.login(user.getId());
        return StpUtil.getTokenValue();
    }

    /**
     * 获取第三方Token
     *
     * @param data data
     * @return {@link SocialTokenDTO} 第三方token
     */
    public abstract SocialTokenDTO getSocialToken(CodeReq data);

    /**
     * 获取第三方用户信息
     *
     * @param socialToken 第三方token
     * @return {@link SocialUserInfoDTO} 第三方用户信息
     */
    public abstract SocialUserInfoDTO getSocialUserInfo(SocialTokenDTO socialToken);

    /**
     * 新增用户账号
     *
     * @param socialToken 第三方Token
     * @return {@link User} 登录用户身份权限
     */
    private User saveLoginUser(SocialTokenDTO socialToken, SocialUserInfoDTO socialUserInfoDTO) {
        // 新增用户信息
        User newUser = User.builder()
                .avatar(socialUserInfoDTO.getAvatar())
                .nickname(socialUserInfoDTO.getNickname())
                .username(socialUserInfoDTO.getId())
                .password(socialToken.getAccessToken())
                .loginType(socialToken.getLoginType())
                .build();
        userMapper.insert(newUser);
        // 新增用户角色
        UserRole userRole = UserRole.builder()
                .userId(newUser.getId())
                .roleId(RoleEnum.USER.getRoleId())
                .build();
        userRoleMapper.insert(userRole);
        return newUser;
    }

}
