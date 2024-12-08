package com.saiuya.blog.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.saiuya.blog.entity.OperationLog;
import com.saiuya.blog.model.vo.query.LogQuery;
import com.saiuya.blog.model.vo.response.OperationLogResp;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 操作日志 Mapper
 *
 * @author saiuya
 */
@Repository
public interface OperationLogMapper extends BaseMapper<OperationLog> {

    /**
     * 查询操作日志
     *
     * @param logQuery 条件
     * @return 操作日志列表
     */
    List<OperationLogResp> selectOperationLogVOList(@Param("param") LogQuery logQuery);

}
