package com.hk.pm.entity;

import java.util.Date;

import org.apache.ibatis.type.Alias;
/**
 * 预算
 * @author panjin
 *
 */
@Alias("budget")
public class Budget {
    /**
     * 
     */
    private Long id;

    /**
     * 项目编号
     */
    private String pCode;

    /**
     * 预算提交客户日期
     */
    private Date bCommitDay;

    /**
     * 预算单位名称
     */
    private String bName;

    /**
     * 预算涉及产品线
     */
    private String bProduct;

    /**
     * 预算金额
     */
    private Float bAmount;

    /**
     * 预算资金来源
     */
    private String bSource;

    /**
     * 预计合同签订时间
     */
    private Date bConcludeDay;

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
     * 预算提交客户日期
     * @return b_commit_day 预算提交客户日期
     */
    public Date getbCommitDay() {
        return bCommitDay;
    }

    /**
     * 预算提交客户日期
     * @param bCommitDay 预算提交客户日期
     */
    public void setbCommitDay(Date bCommitDay) {
        this.bCommitDay = bCommitDay;
    }

    /**
     * 预算单位名称
     * @return b_name 预算单位名称
     */
    public String getbName() {
        return bName;
    }

    /**
     * 预算单位名称
     * @param bName 预算单位名称
     */
    public void setbName(String bName) {
        this.bName = bName == null ? null : bName.trim();
    }

    /**
     * 预算涉及产品线
     * @return b_product 预算涉及产品线
     */
    public String getbProduct() {
        return bProduct;
    }

    /**
     * 预算涉及产品线
     * @param bProduct 预算涉及产品线
     */
    public void setbProduct(String bProduct) {
        this.bProduct = bProduct == null ? null : bProduct.trim();
    }

    /**
     * 预算金额
     * @return b_amount 预算金额
     */
    public Float getbAmount() {
        return bAmount;
    }

    /**
     * 预算金额
     * @param bAmount 预算金额
     */
    public void setbAmount(Float bAmount) {
        this.bAmount = bAmount;
    }

    /**
     * 预算资金来源
     * @return b_source 预算资金来源
     */
    public String getbSource() {
        return bSource;
    }

    /**
     * 预算资金来源
     * @param bSource 预算资金来源
     */
    public void setbSource(String bSource) {
        this.bSource = bSource == null ? null : bSource.trim();
    }

    /**
     * 预计合同签订时间
     * @return b_conclude_day 预计合同签订时间
     */
    public Date getbConcludeDay() {
        return bConcludeDay;
    }

    /**
     * 预计合同签订时间
     * @param bConcludeDay 预计合同签订时间
     */
    public void setbConcludeDay(Date bConcludeDay) {
        this.bConcludeDay = bConcludeDay;
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