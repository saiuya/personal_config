package com.saiuya.blog.model.vo.request;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import jakarta.validation.constraints.NotBlank;

/**
 * Code信息
 *
 * @author saiuya
 **/
@Data
@ApiModel(description = "Code信息")
public class CodeReq {

    /**
     * code
     */
    @NotBlank(message = "code不能为空")
    @ApiModelProperty(value = "code", required = true)
    private String code;
}