package com.saiuya.blog.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.saiuya.blog.entity.Message;
import com.saiuya.blog.model.vo.query.MessageQuery;
import com.saiuya.blog.model.vo.response.MessageBackResp;
import com.saiuya.blog.model.vo.response.MessageResp;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 留言 Mapper
 *
 * @author saiuya
 */
@Repository
public interface MessageMapper extends BaseMapper<Message> {

    /**
     * 查询留言列表
     *
     * @return 留言列表
     */
    List<MessageResp> selectMessageVOList();

    /**
     * 查询后台留言列表
     *
     * @param messageQuery 留言查询条件
     * @return 后台留言列表
     */
    List<MessageBackResp> selectBackMessageList(@Param("param") MessageQuery messageQuery);
}
