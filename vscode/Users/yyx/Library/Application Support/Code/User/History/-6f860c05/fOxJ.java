package com.saiuya.blog.model.vo.request;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.List;

/**
 * 角色Request
 *
 * @author ican
 * @date 2022/12/07 15:36
 **/
@Data
@ApiModel(description = "角色Request")
public class RoleReq {

    /**
     * 角色id
     */
    @ApiModelProperty(value = "角色id")
    private String id;

    /**
     * 角色名
     */
    @NotBlank(message = "角色名不能为空")
    @ApiModelProperty(value = "角色名", required = true)
    private String roleName;

    /**
     * 角色描述
     */
    @ApiModelProperty(value = "角色描述")
    private String roleDesc;

    /**
     * 是否禁用 (0否 1是)
     */
    @NotNull(message = "角色状态不能为空")
    @ApiModelProperty(value = "是否禁用 (0否 1是)", required = true)
    private Integer isDisable;

    /**
     * 菜单id集合
     */
    @ApiModelProperty(value = "菜单id集合")
    private List<Integer> menuIdList;

}