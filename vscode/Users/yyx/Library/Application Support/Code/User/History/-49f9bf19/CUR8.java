package com.saiuya.blog.strategy;

/**
 * 点赞策略
 *
 * @author saiuya
 */
public interface LikeStrategy {

    /**
     * 点赞
     *
     * @param typeId 类型id
     */
    void like(Integer typeId);
}
