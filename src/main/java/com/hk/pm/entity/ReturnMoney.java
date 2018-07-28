package com.hk.pm.entity;

import org.apache.ibatis.type.Alias;
/**
 * 回款
 * @author panjin
 *
 */
@Alias("returnMoney")
public class ReturnMoney {
    /**
     * 
     */
    private Long id;

    /**
     * 合同号
     */
    private String cCode;

    /**
     * 回款单号
     */
    private String rCode;

    /**
     * 未回款额
     */
    private Float rUnreturnMoney;

    /**
     * 已回款额
     */
    private Float rReturnedMoney;

    /**
     * 回款状态；-1：提前；0：正常；1：滞后
     */
    private Integer rReturnStatus;

    /**
     * 首付款条件
     */
    private String rDownPaymentTerms;

    /**
     * 应回款日期
     */
    private String rBackDay;

    /**
     * 应回款金额
     */
    private Float rBackAmount;

    /**
     * 应回款笔数
     */
    private Integer rCount;

    /**
     * 回款超期预警
     */
    private String rAlarm;

    /**
     * 催款状况
     */
    private String rDept;

    /**
     * 预计回款日期
     */
    private String rPlantDay;

    /**
     * 客户接口人
     */
    private String rCustomer;

    /**
     * 已经采取过的措施
     */
    private String rMeasure;

    /**
     * 创建时间
     */
    private String createTime;

    /**
     * 更新时间
     */
    private String updateTime;
    
    private String cName;//合同名称
    
    private String pProgress;//项目进展
    
    private String pState;//项目状态
    
    private String cSigningDate;//签单时间
    
    private float cTotalAmount;//项目总金额
    
    private String oper;//增删改查标签

   	public String getOper() {
   		return oper;
   	}
   	public void setOper(String oper) {
   		this.oper = oper;
   	}
   	
   	
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
     * 合同号
     * @return c_code 合同号
     */
    public String getcCode() {
        return cCode;
    }

    /**
     * 合同号
     * @param cCode 合同号
     */
    public void setcCode(String cCode) {
        this.cCode = cCode == null ? null : cCode.trim();
    }

    /**
     * 回款单号
     * @return r_code 回款单号
     */
    public String getrCode() {
        return rCode;
    }

    /**
     * 回款单号
     * @param rCode 回款单号
     */
    public void setrCode(String rCode) {
        this.rCode = rCode == null ? null : rCode.trim();
    }

    /**
     * 未回款额
     * @return r_unreturn_money 未回款额
     */
    public Float getrUnreturnMoney() {
        return rUnreturnMoney;
    }

    /**
     * 未回款额
     * @param rUnreturnMoney 未回款额
     */
    public void setrUnreturnMoney(Float rUnreturnMoney) {
        this.rUnreturnMoney = rUnreturnMoney;
    }

    /**
     * 已回款额
     * @return r_returned_money 已回款额
     */
    public Float getrReturnedMoney() {
        return rReturnedMoney;
    }

    /**
     * 已回款额
     * @param rReturnedMoney 已回款额
     */
    public void setrReturnedMoney(Float rReturnedMoney) {
        this.rReturnedMoney = rReturnedMoney;
    }

    /**
     * 回款状态；-1：提前；0：正常；1：滞后
     * @return r_return_status 回款状态；-1：提前；0：正常；1：滞后
     */
    public Integer getrReturnStatus() {
        return rReturnStatus;
    }

    /**
     * 回款状态；-1：提前；0：正常；1：滞后
     * @param rReturnStatus 回款状态；-1：提前；0：正常；1：滞后
     */
    public void setrReturnStatus(Integer rReturnStatus) {
        this.rReturnStatus = rReturnStatus;
    }

    /**
     * 首付款条件
     * @return r_down_payment_terms 首付款条件
     */
    public String getrDownPaymentTerms() {
        return rDownPaymentTerms;
    }

    /**
     * 首付款条件
     * @param rDownPaymentTerms 首付款条件
     */
    public void setrDownPaymentTerms(String rDownPaymentTerms) {
        this.rDownPaymentTerms = rDownPaymentTerms == null ? null : rDownPaymentTerms.trim();
    }

    /**
     * 应回款日期
     * @return r_back_day 应回款日期
     */
    public String getrBackDay() {
        return rBackDay;
    }

    /**
     * 应回款日期
     * @param rBackDay 应回款日期
     */
    public void setrBackDay(String rBackDay) {
        this.rBackDay = rBackDay;
    }

    /**
     * 应回款金额
     * @return r_back_amount 应回款金额
     */
    public Float getrBackAmount() {
        return rBackAmount;
    }

    /**
     * 应回款金额
     * @param rBackAmount 应回款金额
     */
    public void setrBackAmount(Float rBackAmount) {
        this.rBackAmount = rBackAmount;
    }

    /**
     * 应回款笔数
     * @return r_count 应回款笔数
     */
    public Integer getrCount() {
        return rCount;
    }

    /**
     * 应回款笔数
     * @param rCount 应回款笔数
     */
    public void setrCount(Integer rCount) {
        this.rCount = rCount;
    }

    /**
     * 回款超期预警
     * @return r_alarm 回款超期预警
     */
    public String getrAlarm() {
        return rAlarm;
    }

    /**
     * 回款超期预警
     * @param rAlarm 回款超期预警
     */
    public void setrAlarm(String rAlarm) {
        this.rAlarm = rAlarm == null ? null : rAlarm.trim();
    }

    /**
     * 催款状况
     * @return r_dept 催款状况
     */
    public String getrDept() {
        return rDept;
    }

    /**
     * 催款状况
     * @param rDept 催款状况
     */
    public void setrDept(String rDept) {
        this.rDept = rDept == null ? null : rDept.trim();
    }

    /**
     * 预计回款日期
     * @return r_plant_day 预计回款日期
     */
    public String getrPlantDay() {
        return rPlantDay;
    }

    /**
     * 预计回款日期
     * @param rPlantDay 预计回款日期
     */
    public void setrPlantDay(String rPlantDay) {
        this.rPlantDay = rPlantDay;
    }

    /**
     * 客户接口人
     * @return r_customer 客户接口人
     */
    public String getrCustomer() {
        return rCustomer;
    }

    /**
     * 客户接口人
     * @param rCustomer 客户接口人
     */
    public void setrCustomer(String rCustomer) {
        this.rCustomer = rCustomer == null ? null : rCustomer.trim();
    }

    /**
     * 已经采取过的措施
     * @return r_measure 已经采取过的措施
     */
    public String getrMeasure() {
        return rMeasure;
    }

    /**
     * 已经采取过的措施
     * @param rMeasure 已经采取过的措施
     */
    public void setrMeasure(String rMeasure) {
        this.rMeasure = rMeasure == null ? null : rMeasure.trim();
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
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public String getpProgress() {
		return pProgress;
	}
	public void setpProgress(String pProgress) {
		this.pProgress = pProgress;
	}
	public String getpState() {
		return pState;
	}
	public void setpState(String pState) {
		this.pState = pState;
	}
	public String getcSigningDate() {
		return cSigningDate;
	}
	public void setcSigningDate(String cSigningDate) {
		this.cSigningDate = cSigningDate;
	}
	public float getcTotalAmount() {
		return cTotalAmount;
	}
	public void setcTotalAmount(float cTotalAmount) {
		this.cTotalAmount = cTotalAmount;
	}
    
}