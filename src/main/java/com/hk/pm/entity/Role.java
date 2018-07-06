package com.hk.pm.entity;

import org.apache.ibatis.type.Alias;

@Alias("role")
public class Role {
    /**
     * 角色ID
     */
    private Integer id;

    /**
     * 角色名称
     */
    private String rName;

    /**
     * 权限
     */
    private Integer rAuthor;

    /**
     * 角色ID
     * @return id 角色ID
     */
    public Integer getId() {
        return id;
    }

    /**
     * 角色ID
     * @param id 角色ID
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 角色名称
     * @return r_name 角色名称
     */
    public String getrName() {
        return rName;
    }

    /**
     * 角色名称
     * @param rName 角色名称
     */
    public void setrName(String rName) {
        this.rName = rName == null ? null : rName.trim();
    }

    /**
     * 权限
     * @return r_author 权限
     */
    public Integer getrAuthor() {
        return rAuthor;
    }

    /**
     * 权限
     * @param rAuthor 权限
     */
    public void setrAuthor(Integer rAuthor) {
        this.rAuthor = rAuthor;
    }
}