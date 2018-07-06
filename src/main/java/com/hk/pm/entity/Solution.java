package com.hk.pm.entity;

import java.util.Date;

import org.apache.ibatis.type.Alias;
/**
 * 项目待解决的问题
 * @author panjin
 *
 */
@Alias("solution")
public class Solution {
    /**
     * 
     */
    private Long id;

    /**
     * 项目编号
     */
    private String pCode;

    /**
     * 问题描述
     */
    private String sProblem;

    /**
     * 问题进展
     */
    private String sProgress;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 更新时间
     */
    private Date updateTime;

    /**
     * 
     * @return id 
     */
    public Long getId() {
        return id;
    }

    /**
     * 
     * @param id 
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 项目编号
     * @return p_code 项目编号
     */
    public String getpCode() {
        return pCode;
    }

    /**
     * 项目编号
     * @param pCode 项目编号
     */
    public void setpCode(String pCode) {
        this.pCode = pCode == null ? null : pCode.trim();
    }

    /**
     * 问题描述
     * @return s_problem 问题描述
     */
    public String getsProblem() {
        return sProblem;
    }

    /**
     * 问题描述
     * @param sProblem 问题描述
     */
    public void setsProblem(String sProblem) {
        this.sProblem = sProblem == null ? null : sProblem.trim();
    }

    /**
     * 问题进展
     * @return s_progress 问题进展
     */
    public String getsProgress() {
        return sProgress;
    }

    /**
     * 问题进展
     * @param sProgress 问题进展
     */
    public void setsProgress(String sProgress) {
        this.sProgress = sProgress == null ? null : sProgress.trim();
    }

    /**
     * 创建时间
     * @return create_time 创建时间
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * 创建时间
     * @param createTime 创建时间
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * 更新时间
     * @return update_time 更新时间
     */
    public Date getUpdateTime() {
        return updateTime;
    }

    /**
     * 更新时间
     * @param updateTime 更新时间
     */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}