package com.saiuya.blog.model.vo.request;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotBlank;

/**
 * 标签Request
 *
 * @author ican
 */
@Data
@ApiModel(description = "标签Request")
public class TagReq {

    /**
     * 标签id
     */
    @ApiModelProperty(value = "标签id")
    private Integer id;

    /**
     * 标签名
     */
    @NotBlank(message = "标签名不能为空")
    @ApiModelProperty(value = "标签名", required = true)
    private String tagName;

}
