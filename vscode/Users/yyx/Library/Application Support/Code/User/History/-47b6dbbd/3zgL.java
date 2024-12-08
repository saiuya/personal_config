package com.ican.controller;

import cn.dev33.satoken.annotation.SaCheckPermission;
import com.saiuya.blog.annotation.AccessLimit;
import com.saiuya.blog.annotation.OptLogger;
import com.saiuya.blog.annotation.VisitLogger;
import com.saiuya.blog.model.vo.PageResult;
import com.saiuya.blog.model.vo.Result;
import com.saiuya.blog.model.vo.query.MessageQuery;
import com.saiuya.blog.model.vo.request.CheckReq;
import com.saiuya.blog.model.vo.request.MessageReq;
import com.saiuya.blog.model.vo.response.MessageBackResp;
import com.saiuya.blog.model.vo.response.MessageResp;
import com.saiuya.blog.service.MessageService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static com.ican.constant.OptTypeConstant.DELETE;
import static com.ican.constant.OptTypeConstant.UPDATE;

/**
 * 留言控制器
 *
 * @author ican
 */
@Api(tags = "留言模块")
@RestController
public class MessageController {

    @Autowired
    private MessageService messageService;

    /**
     * 查看留言列表
     *
     * @return {@link MessageResp} 留言列表
     */
    @VisitLogger(value = "留言")
    @ApiOperation(value = "查看留言列表")
    @GetMapping("/message/list")
    public Result<List<MessageResp>> listMessageVO() {
        return Result.success(messageService.listMessageVO());
    }

    /**
     * 查看后台留言列表
     *
     * @param messageQuery 留言查询条件
     * @return {@link Result< MessageBackResp >} 留言列表
     */
    @ApiOperation(value = "查看后台留言列表")
    @SaCheckPermission("news:message:list")
    @GetMapping("/admin/message/list")
    public Result<PageResult<MessageBackResp>> listMessageBackVO(MessageQuery messageQuery) {
        return Result.success(messageService.listMessageBackVO(messageQuery));
    }

    /**
     * 添加留言
     *
     * @param message 留言信息
     * @return {@link Result<>}
     */
    @AccessLimit(seconds = 60, maxCount = 3)
    @ApiOperation(value = "添加留言")
    @PostMapping("/message/add")
    public Result<?> addMessage(@Validated @RequestBody MessageReq message) {
        messageService.addMessage(message);
        return Result.success();
    }

    /**
     * 删除留言
     *
     * @param messageIdList 留言Id列表
     * @return {@link Result<>}
     */
    @OptLogger(value = DELETE)
    @ApiOperation(value = "删除留言")
    @SaCheckPermission("news:message:delete")
    @DeleteMapping("/admin/message/delete")
    public Result<?> deleteMessage(@RequestBody List<Integer> messageIdList) {
        messageService.removeByIds(messageIdList);
        return Result.success();
    }

    /**
     * 审核留言
     *
     * @param check 审核信息
     * @return {@link Result<>}
     */
    @OptLogger(value = UPDATE)
    @ApiOperation(value = "审核留言")
    @SaCheckPermission("news:message:pass")
    @PutMapping("/admin/message/pass")
    public Result<?> updateMessageCheck(@Validated @RequestBody CheckReq check) {
        messageService.updateMessageCheck(check);
        return Result.success();
    }

}
