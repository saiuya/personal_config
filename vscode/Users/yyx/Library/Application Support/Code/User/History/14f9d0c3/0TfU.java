package com.saiuya.blog.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.saiuya.blog.entity.TaskLog;
import com.saiuya.blog.mapper.TaskLogMapper;
import com.saiuya.blog.model.vo.PageResult;
import com.saiuya.blog.model.vo.query.TaskQuery;
import com.saiuya.blog.model.vo.response.TaskLogResp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 定时任务日志服务
 *
 * @author ican
 */
@Service
public class TaskLogService extends ServiceImpl<TaskLogMapper, TaskLog> {

    @Autowired
    private TaskLogMapper taskLogMapper;

    public PageResult<TaskLogResp> listTaskLog(TaskQuery taskQuery) {
        // 查询定时任务日志数量
        Long count = taskLogMapper.selectTaskLogCount(taskQuery);
        if (count == 0) {
            return new PageResult<>();
        }
        // 查询定时任务日志列表
        List<TaskLogResp> taskLogRespList = taskLogMapper.selectTaskLogRespList(taskQuery);
        return new PageResult<>(taskLogRespList, count);
    }

    public void clearTaskLog() {
        taskLogMapper.delete(null);
    }
}
