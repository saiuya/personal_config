package com.saiuya.blog.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.saiuya.blog.entity.BlogFile;
import com.saiuya.blog.model.vo.query.FileQuery;
import com.saiuya.blog.model.vo.response.FileResp;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 文件Mapper
 *
 * @author saiuya
 */
@Repository
public interface BlogFileMapper extends BaseMapper<BlogFile> {

    /**
     * 查询后台文件列表
     *
     * @param fileQuery 文件条件
     * @return 后台文件列表
     */
    List<FileResp> selectFileVOList(@Param("param") FileQuery fileQuery);
}
