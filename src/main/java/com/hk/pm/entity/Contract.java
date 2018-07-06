package com.hk.pm.entity;

import java.util.Date;

import org.apache.ibatis.type.Alias;
/**
 * 合同
 * @author panjin
 *
 */
@Alias("contract")
public class Contract {
    /**
     * 
     */
    private Long id;

    /**
     * 合同编号
     */
    private String cCode;

    /**
     * 项目编号
     */
    private String pCode;

    /**
     * 合同名称
     */
    private String cName;

    /**
     * 签订日期
     */
    private Date cSigningDate;

    /**
     * 合同总额
     */
    private Float cTotalAmount;

    /**
     * 合同成本
     */
    private Float cCost;

    /**
     * 合同维护费用
     */
    private Float cUpkeep;

    /**
     * 培训费用
     */
    private Float cTraining;

    /**
     * 会账
     */
    private Float cPay;

    /**
     * 毛利率
     */
    private Float cGrossProfitRate;

    /**
     * 质保期
     */
    private String cGuaranteePeriod;

    /**
     * 解决方案负责人
     */
    private String cSolutionPeople;

    /**
     * 施工部门
     */
    private String cWorkDepartment;

    /**
     * 维护部门
     */
    private String cMaintainDepartment;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 更新时间
     */
    private Date updateTime;

    /**
     * 备注
     */
    private String cInfo;

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
     * 合同编号
     * @return c_code 合同编号
     */
    public String getcCode() {
        return cCode;
    }

    /**
     * 合同编号
     * @param cCode 合同编号
     */
    public void setcCode(String cCode) {
        this.cCode = cCode == null ? null : cCode.trim();
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
     * 合同名称
     * @return c_name 合同名称
     */
    public String getcName() {
        return cName;
    }

    /**
     * 合同名称
     * @param cName 合同名称
     */
    public void setcName(String cName) {
        this.cName = cName == null ? null : cName.trim();
    }

    /**
     * 签订日期
     * @return c_signing_date 签订日期
     */
    public Date getcSigningDate() {
        return cSigningDate;
    }

    /**
     * 签订日期
     * @param cSigningDate 签订日期
     */
    public void setcSigningDate(Date cSigningDate) {
        this.cSigningDate = cSigningDate;
    }

    /**
     * 合同总额
     * @return c_total_amount 合同总额
     */
    public Float getcTotalAmount() {
        return cTotalAmount;
    }

    /**
     * 合同总额
     * @param cTotalAmount 合同总额
     */
    public void setcTotalAmount(Float cTotalAmount) {
        this.cTotalAmount = cTotalAmount;
    }

    /**
     * 合同成本
     * @return c_cost 合同成本
     */
    public Float getcCost() {
        return cCost;
    }

    /**
     * 合同成本
     * @param cCost 合同成本
     */
    public void setcCost(Float cCost) {
        this.cCost = cCost;
    }

    /**
     * 合同维护费用
     * @return c_upkeep 合同维护费用
     */
    public Float getcUpkeep() {
        return cUpkeep;
    }

    /**
     * 合同维护费用
     * @param cUpkeep 合同维护费用
     */
    public void setcUpkeep(Float cUpkeep) {
        this.cUpkeep = cUpkeep;
    }

    /**
     * 培训费用
     * @return c_training 培训费用
     */
    public Float getcTraining() {
        return cTraining;
    }

    /**
     * 培训费用
     * @param cTraining 培训费用
     */
    public void setcTraining(Float cTraining) {
        this.cTraining = cTraining;
    }

    /**
     * 会账
     * @return c_pay 会账
     */
    public Float getcPay() {
        return cPay;
    }

    /**
     * 会账
     * @param cPay 会账
     */
    public void setcPay(Float cPay) {
        this.cPay = cPay;
    }

    /**
     * 毛利率
     * @return c_gross_profit_rate 毛利率
     */
    public Float getcGrossProfitRate() {
        return cGrossProfitRate;
    }

    /**
     * 毛利率
     * @param cGrossProfitRate 毛利率
     */
    public void setcGrossProfitRate(Float cGrossProfitRate) {
        this.cGrossProfitRate = cGrossProfitRate;
    }

    /**
     * 质保期
     * @return c_guarantee_period 质保期
     */
    public String getcGuaranteePeriod() {
        return cGuaranteePeriod;
    }

    /**
     * 质保期
     * @param cGuaranteePeriod 质保期
     */
    public void setcGuaranteePeriod(String cGuaranteePeriod) {
        this.cGuaranteePeriod = cGuaranteePeriod == null ? null : cGuaranteePeriod.trim();
    }

    /**
     * 解决方案负责人
     * @return c_solution_people 解决方案负责人
     */
    public String getcSolutionPeople() {
        return cSolutionPeople;
    }

    /**
     * 解决方案负责人
     * @param cSolutionPeople 解决方案负责人
     */
    public void setcSolutionPeople(String cSolutionPeople) {
        this.cSolutionPeople = cSolutionPeople == null ? null : cSolutionPeople.trim();
    }

    /**
     * 施工部门
     * @return c_work_department 施工部门
     */
    public String getcWorkDepartment() {
        return cWorkDepartment;
    }

    /**
     * 施工部门
     * @param cWorkDepartment 施工部门
     */
    public void setcWorkDepartment(String cWorkDepartment) {
        this.cWorkDepartment = cWorkDepartment == null ? null : cWorkDepartment.trim();
    }

    /**
     * 维护部门
     * @return c_maintain_department 维护部门
     */
    public String getcMaintainDepartment() {
        return cMaintainDepartment;
    }

    /**
     * 维护部门
     * @param cMaintainDepartment 维护部门
     */
    public void setcMaintainDepartment(String cMaintainDepartment) {
        this.cMaintainDepartment = cMaintainDepartment == null ? null : cMaintainDepartment.trim();
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

    /**
     * 备注
     * @return c_info 备注
     */
    public String getcInfo() {
        return cInfo;
    }

    /**
     * 备注
     * @param cInfo 备注
     */
    public void setcInfo(String cInfo) {
        this.cInfo = cInfo == null ? null : cInfo.trim();
    }
}