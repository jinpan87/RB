package com.hk.pm.entity;

import java.util.Date;

import org.apache.ibatis.type.Alias;
/**
 * 垫资
 * @author panjin
 *
 */
@Alias("payFunded")
public class PayFunded {
    /**
     * 
     */
    private Long id;

    /**
     * 垫资编号
     */
    private String paCode;

    /**
     * 项目编号
     */
    private String pCode;

    /**
     * 超期天数
     */
    private Integer paOverdue;

    /**
     * 默认：1	超期状态：0未超期；1超期；默认超期
     */
    private Integer paStatus;

    /**
     * 实际成本
     */
    private Float paActualCost;

    /**
     * 成本占用
     */
    private Float paCostPossession;

    /**
     * 备注
     */
    private String paInfo;

    /**
     * 转合同日期
     */
    private Date paToContract;

    /**
     * 扣款天数
     */
    private Integer paCutDay;

    /**
     * 扣款开始日期
     */
    private Date paCutStart;

    /**
     * 运营成本计算
     */
    private Float paRunCost;

    /**
     * 措施
     */
    private String paMeasure;

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
     * 垫资编号
     * @return pa_code 垫资编号
     */
    public String getPaCode() {
        return paCode;
    }

    /**
     * 垫资编号
     * @param paCode 垫资编号
     */
    public void setPaCode(String paCode) {
        this.paCode = paCode == null ? null : paCode.trim();
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
     * 超期天数
     * @return pa_overdue 超期天数
     */
    public Integer getPaOverdue() {
        return paOverdue;
    }

    /**
     * 超期天数
     * @param paOverdue 超期天数
     */
    public void setPaOverdue(Integer paOverdue) {
        this.paOverdue = paOverdue;
    }

    /**
     * 默认：1	超期状态：0未超期；1超期；默认超期
     * @return pa_status 默认：1	超期状态：0未超期；1超期；默认超期
     */
    public Integer getPaStatus() {
        return paStatus;
    }

    /**
     * 默认：1	超期状态：0未超期；1超期；默认超期
     * @param paStatus 默认：1	超期状态：0未超期；1超期；默认超期
     */
    public void setPaStatus(Integer paStatus) {
        this.paStatus = paStatus;
    }

    /**
     * 实际成本
     * @return pa_actual_cost 实际成本
     */
    public Float getPaActualCost() {
        return paActualCost;
    }

    /**
     * 实际成本
     * @param paActualCost 实际成本
     */
    public void setPaActualCost(Float paActualCost) {
        this.paActualCost = paActualCost;
    }

    /**
     * 成本占用
     * @return pa_cost_possession 成本占用
     */
    public Float getPaCostPossession() {
        return paCostPossession;
    }

    /**
     * 成本占用
     * @param paCostPossession 成本占用
     */
    public void setPaCostPossession(Float paCostPossession) {
        this.paCostPossession = paCostPossession;
    }

    /**
     * 备注
     * @return pa_info 备注
     */
    public String getPaInfo() {
        return paInfo;
    }

    /**
     * 备注
     * @param paInfo 备注
     */
    public void setPaInfo(String paInfo) {
        this.paInfo = paInfo == null ? null : paInfo.trim();
    }

    /**
     * 转合同日期
     * @return pa_to_contract 转合同日期
     */
    public Date getPaToContract() {
        return paToContract;
    }

    /**
     * 转合同日期
     * @param paToContract 转合同日期
     */
    public void setPaToContract(Date paToContract) {
        this.paToContract = paToContract;
    }

    /**
     * 扣款天数
     * @return pa_cut_day 扣款天数
     */
    public Integer getPaCutDay() {
        return paCutDay;
    }

    /**
     * 扣款天数
     * @param paCutDay 扣款天数
     */
    public void setPaCutDay(Integer paCutDay) {
        this.paCutDay = paCutDay;
    }

    /**
     * 扣款开始日期
     * @return pa_cut_start 扣款开始日期
     */
    public Date getPaCutStart() {
        return paCutStart;
    }

    /**
     * 扣款开始日期
     * @param paCutStart 扣款开始日期
     */
    public void setPaCutStart(Date paCutStart) {
        this.paCutStart = paCutStart;
    }

    /**
     * 运营成本计算
     * @return pa_run_cost 运营成本计算
     */
    public Float getPaRunCost() {
        return paRunCost;
    }

    /**
     * 运营成本计算
     * @param paRunCost 运营成本计算
     */
    public void setPaRunCost(Float paRunCost) {
        this.paRunCost = paRunCost;
    }

    /**
     * 措施
     * @return pa_measure 措施
     */
    public String getPaMeasure() {
        return paMeasure;
    }

    /**
     * 措施
     * @param paMeasure 措施
     */
    public void setPaMeasure(String paMeasure) {
        this.paMeasure = paMeasure == null ? null : paMeasure.trim();
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