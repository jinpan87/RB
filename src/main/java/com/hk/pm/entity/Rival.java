package com.hk.pm.entity;

import java.util.Date;

import org.apache.ibatis.type.Alias;
/**
 * 竞争者
 * @author panjin
 *
 */
@Alias("rival")
public class Rival {
    /**
     * 
     */
    private Long id;

    /**
     * 编号
     */
    private String rCode;

    /**
     * 产品
     */
    private String rProduct;

    /**
     * 区域
     */
    private String rArea;

    /**
     * 竞争对手
     */
    private String rName;

    /**
     * 合同份额
     */
    private Float rAmount;

    /**
     * 情报来源
     */
    private String rInformationSource;

    /**
     * 精确度
     */
    private String rPrecision;

    /**
     * 情报
     */
    private String rInformation;

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
     * 编号
     * @return r_code 编号
     */
    public String getrCode() {
        return rCode;
    }

    /**
     * 编号
     * @param rCode 编号
     */
    public void setrCode(String rCode) {
        this.rCode = rCode == null ? null : rCode.trim();
    }

    /**
     * 产品
     * @return r_product 产品
     */
    public String getrProduct() {
        return rProduct;
    }

    /**
     * 产品
     * @param rProduct 产品
     */
    public void setrProduct(String rProduct) {
        this.rProduct = rProduct == null ? null : rProduct.trim();
    }

    /**
     * 区域
     * @return r_area 区域
     */
    public String getrArea() {
        return rArea;
    }

    /**
     * 区域
     * @param rArea 区域
     */
    public void setrArea(String rArea) {
        this.rArea = rArea == null ? null : rArea.trim();
    }

    /**
     * 竞争对手
     * @return r_name 竞争对手
     */
    public String getrName() {
        return rName;
    }

    /**
     * 竞争对手
     * @param rName 竞争对手
     */
    public void setrName(String rName) {
        this.rName = rName == null ? null : rName.trim();
    }

    /**
     * 合同份额
     * @return r_amount 合同份额
     */
    public Float getrAmount() {
        return rAmount;
    }

    /**
     * 合同份额
     * @param rAmount 合同份额
     */
    public void setrAmount(Float rAmount) {
        this.rAmount = rAmount;
    }

    /**
     * 情报来源
     * @return r_information_source 情报来源
     */
    public String getrInformationSource() {
        return rInformationSource;
    }

    /**
     * 情报来源
     * @param rInformationSource 情报来源
     */
    public void setrInformationSource(String rInformationSource) {
        this.rInformationSource = rInformationSource == null ? null : rInformationSource.trim();
    }

    /**
     * 精确度
     * @return r_precision 精确度
     */
    public String getrPrecision() {
        return rPrecision;
    }

    /**
     * 精确度
     * @param rPrecision 精确度
     */
    public void setrPrecision(String rPrecision) {
        this.rPrecision = rPrecision == null ? null : rPrecision.trim();
    }

    /**
     * 情报
     * @return r_information 情报
     */
    public String getrInformation() {
        return rInformation;
    }

    /**
     * 情报
     * @param rInformation 情报
     */
    public void setrInformation(String rInformation) {
        this.rInformation = rInformation == null ? null : rInformation.trim();
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