package com.saiuya.blog.strategy.context;

import com.saiuya.blog.model.vo.response.ArticleSearchResp;
import com.saiuya.blog.strategy.SearchStrategy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import static com.ican.enums.SearchModeEnum.getStrategy;

/**
 * 搜索策略上下文
 *
 * @author ican
 */
@Service
public class SearchStrategyContext {

    /**
     * 搜索模式
     */
    @Value("${search.mode}")
    private String searchMode;

    @Autowired
    private Map<String, SearchStrategy> searchStrategyMap;

    /**
     * 执行搜索策略
     *
     * @param keyword 关键字
     * @return {@link List <ArticleSearchVO>} 搜索文章
     */
    public List<ArticleSearchResp> executeSearchStrategy(String keyword) {
        return searchStrategyMap.get(getStrategy(searchMode)).searchArticle(keyword);
    }

}