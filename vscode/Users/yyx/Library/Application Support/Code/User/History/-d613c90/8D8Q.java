package com.saiuya.blog.model.vo.request;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import java.util.List;

/**
 * 逻辑删除
 *
 * @author saiuya
 */
@Data
@ApiModel(description = "逻辑删除")
public class DeleteReq {

    /**
     * id列表
     */
    @NotEmpty(message = "id不能为空")
    @ApiModelProperty(value = "id列表", required = true)
    private List<Integer> idList;

    /**
     * 是否删除 (0否 1是)
     */
    @NotNull(message = "状态值不能为空")
    @ApiModelProperty(value = "是否删除 (0否 1是)", required = true)
    private Integer isDelete;
}
