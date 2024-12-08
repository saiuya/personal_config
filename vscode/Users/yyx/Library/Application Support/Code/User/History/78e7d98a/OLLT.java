package com.saiuya.blog.strategy.impl;

import cn.dev33.satoken.stp.StpUtil;
import cn.hutool.core.lang.Assert;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.saiuya.blog.constant.RedisConstant;
import com.saiuya.blog.entity.Talk;
import com.saiuya.blog.mapper.TalkMapper;
import com.saiuya.blog.service.RedisService;
import com.saiuya.blog.strategy.LikeStrategy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 说说点赞策略
 *
 * @author saiuya
 */
@Service("talkLikeStrategyImpl")
public class TalkLikeStrategyImpl implements LikeStrategy {

    @Autowired
    private RedisService redisService;

    @Autowired
    private TalkMapper talkMapper;

    @Override
    public void like(Integer talkId) {
        Talk talk = talkMapper.selectOne(new LambdaQueryWrapper<Talk>()
                .select(Talk::getId)
                .eq(Talk::getId, talkId));
        Assert.notNull(talk, "说说不存在");
        // 用户id作为键，说说id作为值，记录用户点赞记录
        String userLikeTalkKey = RedisConstant.USER_TALK_LIKE + StpUtil.getLoginIdAsInt();
        // 判断是否点赞
        if (redisService.hasSetValue(userLikeTalkKey, talkId)) {
            // 取消点赞则删除用户id中的说说id
            redisService.deleteSet(userLikeTalkKey, talkId);
            // 说说点赞量-1
            redisService.decrHash(RedisConstant.TALK_LIKE_COUNT, talkId.toString(), 1L);
        } else {
            // 点赞则在用户id记录说说id
            redisService.setSet(userLikeTalkKey, talkId);
            // 说说点赞量+1
            redisService.incrHash(RedisConstant.TALK_LIKE_COUNT, talkId.toString(), 1L);
        }
    }

}
