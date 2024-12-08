package com.saiuya.blog.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.saiuya.blog.entity.ChatRecord;
import org.springframework.stereotype.Repository;

/**
 * 聊天记录 Mapper
 *
 * @author saiuya
 * @date 2023/06/12 10:55
 **/
@Repository
public interface ChatRecordMapper extends BaseMapper<ChatRecord> {
}