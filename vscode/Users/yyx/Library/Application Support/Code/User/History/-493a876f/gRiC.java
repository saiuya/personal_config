package com.saiuya.blog.strategy.context;

import com.saiuya.blog.enums.LoginTypeEnum;
import com.saiuya.blog.model.vo.request.CodeReq;
import com.saiuya.blog.strategy.SocialLoginStrategy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * 登录策略上下文
 *
 * @author saiuya
 */
@Service
public class SocialLoginStrategyContext {

    @Autowired
    private Map<String, SocialLoginStrategy> socialLoginStrategyMap;

    /**
     * 登录
     *
     * @param data          data
     * @param loginTypeEnum 登录枚举
     * @return {@link String} Token
     */
    public String executeLoginStrategy(CodeReq data, LoginTypeEnum loginTypeEnum) {
        return socialLoginStrategyMap.get(loginTypeEnum.getStrategy()).login(data);
    }
}
