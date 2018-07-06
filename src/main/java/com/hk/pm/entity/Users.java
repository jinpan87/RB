package com.hk.pm.entity;

import org.apache.ibatis.type.Alias;

@Alias("users")
public class Users {
    /**
     * 员工编号
     */
    private Integer id;

    /**
     * 用户名
     */
    private String uname;

    /**
     * 密码
     */
    private String pwd;

    /**
     * 真实姓名
     */
    private String realname;

    /**
     * 权限：0普通员工1管理员
     */
    private String permission;

    /**
     * 员工编号
     * @return ID 员工编号
     */
    public Integer getId() {
        return id;
    }

    /**
     * 员工编号
     * @param id 员工编号
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 用户名
     * @return UName 用户名
     */
    public String getUname() {
        return uname;
    }

    /**
     * 用户名
     * @param uname 用户名
     */
    public void setUname(String uname) {
        this.uname = uname == null ? null : uname.trim();
    }

    /**
     * 密码
     * @return Pwd 密码
     */
    public String getPwd() {
        return pwd;
    }

    /**
     * 密码
     * @param pwd 密码
     */
    public void setPwd(String pwd) {
        this.pwd = pwd == null ? null : pwd.trim();
    }

    /**
     * 真实姓名
     * @return RealName 真实姓名
     */
    public String getRealname() {
        return realname;
    }

    /**
     * 真实姓名
     * @param realname 真实姓名
     */
    public void setRealname(String realname) {
        this.realname = realname == null ? null : realname.trim();
    }

    /**
     * 权限：0普通员工1管理员
     * @return permission 权限：0普通员工1管理员
     */
    public String getPermission() {
        return permission;
    }

    /**
     * 权限：0普通员工1管理员
     * @param permission 权限：0普通员工1管理员
     */
    public void setPermission(String permission) {
        this.permission = permission == null ? null : permission.trim();
    }
}