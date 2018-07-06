package com.hk.pm.entity;

import org.apache.ibatis.type.Alias;
/**
 * 项目类型
 * @author panjin
 *
 */
@Alias("type")
public class Type {
    /**
     * 角色ID
     */
    private Integer id;

    /**
     * 简码
     */
    private String tCode;

    /**
     * 项目类名
     */
    private String tName;

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
     * 简码
     * @return t_code 简码
     */
    public String gettCode() {
        return tCode;
    }

    /**
     * 简码
     * @param tCode 简码
     */
    public void settCode(String tCode) {
        this.tCode = tCode == null ? null : tCode.trim();
    }

    /**
     * 项目类名
     * @return t_name 项目类名
     */
    public String gettName() {
        return tName;
    }

    /**
     * 项目类名
     * @param tName 项目类名
     */
    public void settName(String tName) {
        this.tName = tName == null ? null : tName.trim();
    }
}