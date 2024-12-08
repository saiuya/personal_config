package com.saiuya.blog.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.saiuya.blog.entity.Talk;
import com.saiuya.blog.model.vo.query.PageQuery;
import com.saiuya.blog.model.vo.query.TalkQuery;
import com.saiuya.blog.model.vo.response.TalkBackInfoResp;
import com.saiuya.blog.model.vo.response.TalkBackResp;
import com.saiuya.blog.model.vo.response.TalkResp;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 说说 Mapper
 *
 * @author ican
 */
@Repository
public interface TalkMapper extends BaseMapper<Talk> {

    /**
     * 查询后台说说列表
     *
     * @param talkQuery 说说查询条件
     * @return 后台说说列表
     */
    List<TalkBackResp> selectBackTalkList(@Param("param") TalkQuery talkQuery);

    /**
     * 根据id查询后台说说
     *
     * @param talkId 说说id
     * @return 后台说说
     */
    TalkBackInfoResp selectTalkBackById(@Param("talkId") Integer talkId);

    /**
     * 根据id查询说说
     *
     * @param talkId 说说id
     * @return 说说
     */
    TalkResp selectTalkById(@Param("talkId") Integer talkId);

    /**
     * 查询说说列表
     *
     * @param pageQuery 分页查询条件
     * @return 说说列表
     */
    List<TalkResp> selectTalkList(@Param("param") PageQuery pageQuery);
}
