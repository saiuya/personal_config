package com.saiuya.blog.model.vo.request;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import java.util.List;

/**
 * 审核Request
 *
 * @author saiuya
 */
@Data
@ApiModel(description = "审核Request")
public class CheckReq {

    /**
     * id集合
     */
    @NotEmpty(message = "id不能为空")
    @ApiModelProperty(value = "id集合", required = true)
    private List<Integer> idList;

    /**
     * 是否通过 (0否 1是)
     */
    @NotNull(message = "状态值不能为空")
    @ApiModelProperty(value = "是否通过 (0否 1是)", required = true)
    private Integer isCheck;
}
