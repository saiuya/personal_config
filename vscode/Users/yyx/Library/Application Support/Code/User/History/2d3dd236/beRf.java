package com.saiuya.blog.strategy;

import com.saiuya.blog.model.vo.response.ArticleSearchResp;

import java.util.List;

/**
 * 文章搜索策略
 *
 * @author saiuya
 */
public interface SearchStrategy {

    /**
     * 搜索文章
     *
     * @param keyword 关键字
     * @return {@link List< ArticleSearchResp >} 文章列表
     */
    List<ArticleSearchResp> searchArticle(String keyword);
}
