package com.hk.pm.entity;

import java.util.Date;

public class Apply {
    /**
     * 
     */
    private String id;

    /**
     * 报销金额
     */
    private Float aMoney;

    /**
     * 费用名称
     */
    private String aName;

    /**
     * 费用类型，1：差旅；2：招待
     */
    private Integer aType;

    /**
     * 发票单号
     */
    private String aInvoiceNumber;

    /**
     * 发票用途
     */
    private String aInvoiceUse;

    /**
     * 开票单位
     */
    private String aInvoiceName;

    /**
     * 申请人ID
     */
    private Integer aProposer;

    /**
     * 审批人ID
     */
    private Integer aApprover;

    /**
     * 发生费用的项目编号
     */
    private String aProjectCode;

    /**
     * 审批状态，0：未审批，1：审批通过，2：审批拒绝
     */
    private Integer aState;

    /**
     * 同意或拒绝的理由
     */
    private String aReason;

    /**
     * 上传的报销单照片
     */
    private String aSource;

    /**
     * 更新时间
     */
    private String updateTime;

    /**
     * 创建时间
     */
    private String createTime;

    /**
     * 
     * @return id 
     */
    public String getId() {
        return id;
    }

    /**
     * 
     * @param id 
     */
    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    /**
     * 报销金额
     * @return a_money 报销金额
     */
    public Float getaMoney() {
        return aMoney;
    }

    /**
     * 报销金额
     * @param aMoney 报销金额
     */
    public void setaMoney(Float aMoney) {
        this.aMoney = aMoney;
    }

    /**
     * 费用名称
     * @return a_name 费用名称
     */
    public String getaName() {
        return aName;
    }

    /**
     * 费用名称
     * @param aName 费用名称
     */
    public void setaName(String aName) {
        this.aName = aName == null ? null : aName.trim();
    }

    /**
     * 费用类型，1：差旅；2：招待
     * @return a_type 费用类型，1：差旅；2：招待
     */
    public Integer getaType() {
        return aType;
    }

    /**
     * 费用类型，1：差旅；2：招待
     * @param aType 费用类型，1：差旅；2：招待
     */
    public void setaType(Integer aType) {
        this.aType = aType;
    }

    /**
     * 发票单号
     * @return a_invoice_number 发票单号
     */
    public String getaInvoiceNumber() {
        return aInvoiceNumber;
    }

    /**
     * 发票单号
     * @param aInvoiceNumber 发票单号
     */
    public void setaInvoiceNumber(String aInvoiceNumber) {
        this.aInvoiceNumber = aInvoiceNumber == null ? null : aInvoiceNumber.trim();
    }

    /**
     * 发票用途
     * @return a_invoice_use 发票用途
     */
    public String getaInvoiceUse() {
        return aInvoiceUse;
    }

    /**
     * 发票用途
     * @param aInvoiceUse 发票用途
     */
    public void setaInvoiceUse(String aInvoiceUse) {
        this.aInvoiceUse = aInvoiceUse == null ? null : aInvoiceUse.trim();
    }

    /**
     * 开票单位
     * @return a_invoice_name 开票单位
     */
    public String getaInvoiceName() {
        return aInvoiceName;
    }

    /**
     * 开票单位
     * @param aInvoiceName 开票单位
     */
    public void setaInvoiceName(String aInvoiceName) {
        this.aInvoiceName = aInvoiceName == null ? null : aInvoiceName.trim();
    }

    /**
     * 申请人ID
     * @return a_proposer 申请人ID
     */
    public Integer getaProposer() {
        return aProposer;
    }

    /**
     * 申请人ID
     * @param aProposer 申请人ID
     */
    public void setaProposer(Integer aProposer) {
        this.aProposer = aProposer;
    }

    /**
     * 审批人ID
     * @return a_approver 审批人ID
     */
    public Integer getaApprover() {
        return aApprover;
    }

    /**
     * 审批人ID
     * @param aApprover 审批人ID
     */
    public void setaApprover(Integer aApprover) {
        this.aApprover = aApprover;
    }

    /**
     * 发生费用的项目编号
     * @return a_project_code 发生费用的项目编号
     */
    public String getaProjectCode() {
        return aProjectCode;
    }

    /**
     * 发生费用的项目编号
     * @param aProjectCode 发生费用的项目编号
     */
    public void setaProjectCode(String aProjectCode) {
        this.aProjectCode = aProjectCode == null ? null : aProjectCode.trim();
    }

    /**
     * 审批状态，0：未审批，1：审批通过，2：审批拒绝
     * @return a_state 审批状态，0：未审批，1：审批通过，2：审批拒绝
     */
    public Integer getaState() {
        return aState;
    }

    /**
     * 审批状态，0：未审批，1：审批通过，2：审批拒绝
     * @param aState 审批状态，0：未审批，1：审批通过，2：审批拒绝
     */
    public void setaState(Integer aState) {
        this.aState = aState;
    }

    /**
     * 同意或拒绝的理由
     * @return a_reason 同意或拒绝的理由
     */
    public String getaReason() {
        return aReason;
    }

    /**
     * 同意或拒绝的理由
     * @param aReason 同意或拒绝的理由
     */
    public void setaReason(String aReason) {
        this.aReason = aReason == null ? null : aReason.trim();
    }

    /**
     * 上传的报销单照片
     * @return a_source 上传的报销单照片
     */
    public String getaSource() {
        return aSource;
    }

    /**
     * 上传的报销单照片
     * @param aSource 上传的报销单照片
     */
    public void setaSource(String aSource) {
        this.aSource = aSource == null ? null : aSource.trim();
    }

    /**
     * 更新时间
     * @return update_time 更新时间
     */
    public String getUpdateTime() {
        return updateTime;
    }

    /**
     * 更新时间
     * @param updateTime 更新时间
     */
    public void setUpdateTime(String updateTime) {
        this.updateTime = updateTime;
    }

    /**
     * 创建时间
     * @return create_time 创建时间
     */
    public String getCreateTime() {
        return createTime;
    }

    /**
     * 创建时间
     * @param createTime 创建时间
     */
    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }
}