package com.hk.pm.entity;

import java.util.Date;

import org.apache.ibatis.type.Alias;
/**
 * 项目
 * @author panjin
 *
 */
@Alias("projectBase")
public class ProjectBase {
    /**
     * 
     */
    private Long id;

    /**
     * 项目编号
     */
    private String pCode;

    /**
     * 项目类型编号
     */
    private Integer pType;

    /**
     * 项目名称
     */
    private String pName;

    /**
     * 项目成员
     */
    private String pGrew;

    /**
     * 项目经理
     */
    private String pManager;

    /**
     * 项目简介
     */
    private String pSummary;

    /**
     * 售后负责人
     */
    private String pAfterManager;

    /**
     * 省
     */
    private String pProvince;

    /**
     * 市
     */
    private String pCity;

    /**
     * 区县
     */
    private String pCounty;

    /**
     * 销售项目编号
     */
    private String pScode;

    /**
     * 销售项目名称
     */
    private String pSname;

    /**
     * 资金来源
     */
    private String pSourceFund;

    /**
     * 资金是否到位,0：未到位；1：到位
     */
    private Integer pReady;

    /**
     * 原承建厂家
     */
    private String pOriginalContractor;

    /**
     * 成功经验和失败教训
     */
    private String pSummarize;

    /**
     * 报价
     */
    private Float pMoney;

    /**
     * 产品名称
     */
    private String pProduct;

    /**
     * 验收情况
     */
    private String pCheck;

    /**
     * 进度情况
     */
    private String pProgress;

    /**
     * 预计合同额
     */
    private Float pPlanAmount;

    /**
     * 预计成交率
     */
    private String pPlanMake;

    /**
     * 预计签单时间
     */
    private String pWrittenDay;

    /**
     * 客户编号
     */
    private String pCustomerCode;

    /**
     * 竞争对手编号
     */
    private String pRivalCode;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 项目启动日期
     */
    private Date startTime;

    /**
     * 是否结项，0：否；1：是
     */
    private Integer pState;

    /**
     * 结项原因
     */
    private String pOverCause;

    /**
     * 更新日期
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
     * 项目类型编号
     * @return p_type 项目类型编号
     */
    public Integer getpType() {
        return pType;
    }

    /**
     * 项目类型编号
     * @param pType 项目类型编号
     */
    public void setpType(Integer pType) {
        this.pType = pType;
    }

    /**
     * 项目名称
     * @return p_name 项目名称
     */
    public String getpName() {
        return pName;
    }

    /**
     * 项目名称
     * @param pName 项目名称
     */
    public void setpName(String pName) {
        this.pName = pName == null ? null : pName.trim();
    }

    /**
     * 项目成员
     * @return p_grew 项目成员
     */
    public String getpGrew() {
        return pGrew;
    }

    /**
     * 项目成员
     * @param pGrew 项目成员
     */
    public void setpGrew(String pGrew) {
        this.pGrew = pGrew == null ? null : pGrew.trim();
    }

    /**
     * 项目经理
     * @return p_manager 项目经理
     */
    public String getpManager() {
        return pManager;
    }

    /**
     * 项目经理
     * @param pManager 项目经理
     */
    public void setpManager(String pManager) {
        this.pManager = pManager == null ? null : pManager.trim();
    }

    /**
     * 项目简介
     * @return p_summary 项目简介
     */
    public String getpSummary() {
        return pSummary;
    }

    /**
     * 项目简介
     * @param pSummary 项目简介
     */
    public void setpSummary(String pSummary) {
        this.pSummary = pSummary == null ? null : pSummary.trim();
    }

    /**
     * 售后负责人
     * @return p_after_manager 售后负责人
     */
    public String getpAfterManager() {
        return pAfterManager;
    }

    /**
     * 售后负责人
     * @param pAfterManager 售后负责人
     */
    public void setpAfterManager(String pAfterManager) {
        this.pAfterManager = pAfterManager == null ? null : pAfterManager.trim();
    }

    /**
     * 省
     * @return p_province 省
     */
    public String getpProvince() {
        return pProvince;
    }

    /**
     * 省
     * @param pProvince 省
     */
    public void setpProvince(String pProvince) {
        this.pProvince = pProvince == null ? null : pProvince.trim();
    }

    /**
     * 市
     * @return p_city 市
     */
    public String getpCity() {
        return pCity;
    }

    /**
     * 市
     * @param pCity 市
     */
    public void setpCity(String pCity) {
        this.pCity = pCity == null ? null : pCity.trim();
    }

    /**
     * 区县
     * @return p_county 区县
     */
    public String getpCounty() {
        return pCounty;
    }

    /**
     * 区县
     * @param pCounty 区县
     */
    public void setpCounty(String pCounty) {
        this.pCounty = pCounty == null ? null : pCounty.trim();
    }

    /**
     * 销售项目编号
     * @return p_scode 销售项目编号
     */
    public String getpScode() {
        return pScode;
    }

    /**
     * 销售项目编号
     * @param pScode 销售项目编号
     */
    public void setpScode(String pScode) {
        this.pScode = pScode == null ? null : pScode.trim();
    }

    /**
     * 销售项目名称
     * @return p_sname 销售项目名称
     */
    public String getpSname() {
        return pSname;
    }

    /**
     * 销售项目名称
     * @param pSname 销售项目名称
     */
    public void setpSname(String pSname) {
        this.pSname = pSname == null ? null : pSname.trim();
    }

    /**
     * 资金来源
     * @return p_source_fund 资金来源
     */
    public String getpSourceFund() {
        return pSourceFund;
    }

    /**
     * 资金来源
     * @param pSourceFund 资金来源
     */
    public void setpSourceFund(String pSourceFund) {
        this.pSourceFund = pSourceFund == null ? null : pSourceFund.trim();
    }

    /**
     * 资金是否到位,0：未到位；1：到位
     * @return p_ready 资金是否到位,0：未到位；1：到位
     */
    public Integer getpReady() {
        return pReady;
    }

    /**
     * 资金是否到位,0：未到位；1：到位
     * @param pReady 资金是否到位,0：未到位；1：到位
     */
    public void setpReady(Integer pReady) {
        this.pReady = pReady;
    }

    /**
     * 原承建厂家
     * @return p_original_contractor 原承建厂家
     */
    public String getpOriginalContractor() {
        return pOriginalContractor;
    }

    /**
     * 原承建厂家
     * @param pOriginalContractor 原承建厂家
     */
    public void setpOriginalContractor(String pOriginalContractor) {
        this.pOriginalContractor = pOriginalContractor == null ? null : pOriginalContractor.trim();
    }

    /**
     * 成功经验和失败教训
     * @return p_summarize 成功经验和失败教训
     */
    public String getpSummarize() {
        return pSummarize;
    }

    /**
     * 成功经验和失败教训
     * @param pSummarize 成功经验和失败教训
     */
    public void setpSummarize(String pSummarize) {
        this.pSummarize = pSummarize == null ? null : pSummarize.trim();
    }

    /**
     * 报价
     * @return p_money 报价
     */
    public Float getpMoney() {
        return pMoney;
    }

    /**
     * 报价
     * @param pMoney 报价
     */
    public void setpMoney(Float pMoney) {
        this.pMoney = pMoney;
    }

    /**
     * 产品名称
     * @return p_product 产品名称
     */
    public String getpProduct() {
        return pProduct;
    }

    /**
     * 产品名称
     * @param pProduct 产品名称
     */
    public void setpProduct(String pProduct) {
        this.pProduct = pProduct == null ? null : pProduct.trim();
    }

    /**
     * 验收情况
     * @return p_check 验收情况
     */
    public String getpCheck() {
        return pCheck;
    }

    /**
     * 验收情况
     * @param pCheck 验收情况
     */
    public void setpCheck(String pCheck) {
        this.pCheck = pCheck == null ? null : pCheck.trim();
    }

    /**
     * 进度情况
     * @return p_progress 进度情况
     */
    public String getpProgress() {
        return pProgress;
    }

    /**
     * 进度情况
     * @param pProgress 进度情况
     */
    public void setpProgress(String pProgress) {
        this.pProgress = pProgress == null ? null : pProgress.trim();
    }

    /**
     * 预计合同额
     * @return p_plan_amount 预计合同额
     */
    public Float getpPlanAmount() {
        return pPlanAmount;
    }

    /**
     * 预计合同额
     * @param pPlanAmount 预计合同额
     */
    public void setpPlanAmount(Float pPlanAmount) {
        this.pPlanAmount = pPlanAmount;
    }

    /**
     * 预计成交率
     * @return p_plan_make 预计成交率
     */
    public String getpPlanMake() {
        return pPlanMake;
    }

    /**
     * 预计成交率
     * @param pPlanMake 预计成交率
     */
    public void setpPlanMake(String pPlanMake) {
        this.pPlanMake = pPlanMake == null ? null : pPlanMake.trim();
    }

    /**
     * 预计签单时间
     * @return p_written_day 预计签单时间
     */
    public String getpWrittenDay() {
        return pWrittenDay;
    }

    /**
     * 预计签单时间
     * @param pWrittenDay 预计签单时间
     */
    public void setpWrittenDay(String pWrittenDay) {
        this.pWrittenDay = pWrittenDay;
    }

    /**
     * 客户编号
     * @return p_customer_code 客户编号
     */
    public String getpCustomerCode() {
        return pCustomerCode;
    }

    /**
     * 客户编号
     * @param pCustomerCode 客户编号
     */
    public void setpCustomerCode(String pCustomerCode) {
        this.pCustomerCode = pCustomerCode == null ? null : pCustomerCode.trim();
    }

    /**
     * 竞争对手编号
     * @return p_rival_code 竞争对手编号
     */
    public String getpRivalCode() {
        return pRivalCode;
    }

    /**
     * 竞争对手编号
     * @param pRivalCode 竞争对手编号
     */
    public void setpRivalCode(String pRivalCode) {
        this.pRivalCode = pRivalCode == null ? null : pRivalCode.trim();
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
     * 项目启动日期
     * @return start_time 项目启动日期
     */
    public Date getStartTime() {
        return startTime;
    }

    /**
     * 项目启动日期
     * @param startTime 项目启动日期
     */
    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    /**
     * 是否结项，0：否；1：是
     * @return p_state 是否结项，0：否；1：是
     */
    public Integer getpState() {
        return pState;
    }

    /**
     * 是否结项，0：否；1：是
     * @param pState 是否结项，0：否；1：是
     */
    public void setpState(Integer pState) {
        this.pState = pState;
    }

    /**
     * 结项原因
     * @return p_over_cause 结项原因
     */
    public String getpOverCause() {
        return pOverCause;
    }

    /**
     * 结项原因
     * @param pOverCause 结项原因
     */
    public void setpOverCause(String pOverCause) {
        this.pOverCause = pOverCause == null ? null : pOverCause.trim();
    }

    /**
     * 更新日期
     * @return update_time 更新日期
     */
    public Date getUpdateTime() {
        return updateTime;
    }

    /**
     * 更新日期
     * @param updateTime 更新日期
     */
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}