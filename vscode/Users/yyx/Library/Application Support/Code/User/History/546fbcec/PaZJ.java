package com.saiuya.blog.model.vo.request;

import io.swagger.annotations.ApiModel;
import lombok.Data;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

/**
 * 轮播图Request
 *
 * @author saiuya
 * @date 2024/02/07 10:13
 **/
@Data
@ApiModel(value = "轮播图Request")
public class CarouselReqVo {

    /**
     * 轮播图id
     */
    private Integer id;

    /**
     * 轮播图地址
     */
    @NotBlank(message = "imgUrl is null")
    private String imgUrl;

    /**
     * 是否显示 (0否 1是)
     */
    @NotNull(message = "status is null")
    private Integer status;

    /**
     * 备注
     */
    private String remark;

}