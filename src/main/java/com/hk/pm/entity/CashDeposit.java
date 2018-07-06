package com.hk.pm.entity;

import java.util.Date;

import org.apache.ibatis.type.Alias;
/**
 * 保证金
 * @author panjin
 *
 */
@Alias("cashDeposit")
public class CashDeposit {
    /**
     * 
     */
    private Long id;

    /**
     * 项目编号
     */
    private String pCode;

    /**
     * 费用名称
     */
    private String cdName;

    /**
     * 金额
     */
    private Float cdMoney;

    /**
     * 申请时间
     */
    private Date cdApplicationDay;

    /**
     * 回款日期
     */
    private Date cdBackDay;

    /**
     * 回款金额
     */
    private Float cdBackMoney;

    /**
     * 备注
     */
    private String cdInfo;

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
     * 费用名称
     * @return cd_name 费用名称
     */
    public String getCdName() {
        return cdName;
    }

    /**
     * 费用名称
     * @param cdName 费用名称
     */
    public void setCdName(String cdName) {
        this.cdName = cdName == null ? null : cdName.trim();
    }

    /**
     * 金额
     * @return cd_money 金额
     */
    public Float getCdMoney() {
        return cdMoney;
    }

    /**
     * 金额
     * @param cdMoney 金额
     */
    public void setCdMoney(Float cdMoney) {
        this.cdMoney = cdMoney;
    }

    /**
     * 申请时间
     * @return cd_application_day 申请时间
     */
    public Date getCdApplicationDay() {
        return cdApplicationDay;
    }

    /**
     * 申请时间
     * @param cdApplicationDay 申请时间
     */
    public void setCdApplicationDay(Date cdApplicationDay) {
        this.cdApplicationDay = cdApplicationDay;
    }

    /**
     * 回款日期
     * @return cd_back_day 回款日期
     */
    public Date getCdBackDay() {
        return cdBackDay;
    }

    /**
     * 回款日期
     * @param cdBackDay 回款日期
     */
    public void setCdBackDay(Date cdBackDay) {
        this.cdBackDay = cdBackDay;
    }

    /**
     * 回款金额
     * @return cd_back_money 回款金额
     */
    public Float getCdBackMoney() {
        return cdBackMoney;
    }

    /**
     * 回款金额
     * @param cdBackMoney 回款金额
     */
    public void setCdBackMoney(Float cdBackMoney) {
        this.cdBackMoney = cdBackMoney;
    }

    /**
     * 备注
     * @return cd_info 备注
     */
    public String getCdInfo() {
        return cdInfo;
    }

    /**
     * 备注
     * @param cdInfo 备注
     */
    public void setCdInfo(String cdInfo) {
        this.cdInfo = cdInfo == null ? null : cdInfo.trim();
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