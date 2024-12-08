package com.saiuya.blog.strategy;

import com.saiuya.blog.model.vo.request.CodeReq;

/**
 * 第三方登录策略
 *
 * @author saiuya
 */
public interface SocialLoginStrategy {

    /**
     * 登录
     *
     * @param data 第三方code
     * @return {@link String} Token
     */
    String login(CodeReq data);
}
