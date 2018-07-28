package com.hk.pm.entity;

import java.util.Date;

import org.apache.ibatis.type.Alias;
/**
 * 客户
 * @author panjin
 *
 */
@Alias("client")
public class Client {
    /**
     * 
     */
    private Long id;

    /**
     * 客户单位编号
     */
    private String cCode;

    /**
     * 提交人
     */
    private String cSubmitter;

    /**
     * 客户
     */
    private String cName;

    /**
     * 省份
     */
    private String cProvince;

    /**
     * 地区
     */
    private String cDistrict;

    /**
     * 单位
     */
    private String cCorporation;

    /**
     * 性别
     */
    private String cSex;

    /**
     * 出生年月日
     */
    private String cBirthday;

    /**
     * 年龄
     */
    private Integer cAge;

    /**
     * 职务
     */
    private String cDuty;

    /**
     * 行政级别
     */
    private String cAdministrativeLevel;

    /**
     * 毕业学校
     */
    private String cSchool;

    /**
     * 从警经历
     */
    private String cExperience;

    /**
     * 手机号
     */
    private String cMobilePhone;

    /**
     * 办公电话
     */
    private String cPhone;

    /**
     * 性格
     */
    private String cCharacter;

    /**
     * 爱好
     */
    private String cHobby;

    /**
     * 吸烟情况
     */
    private String cSmoke;

    /**
     * 酒量
     */
    private String cDrink;

    /**
     * 健康状况
     */
    private String cHealth;

    /**
     * 家庭成员情况
     */
    private String cFamily;

    /**
     * 客户关系定位
     */
    private String cCustomerRelations;

    /**
     * 创建时间
     */
    private String createTime;

    /**
     * 更新时间
     */
    private String updateTime;
    
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
     * 客户单位编号
     * @return c_code 客户单位编号
     */
    public String getcCode() {
        return cCode;
    }

    /**
     * 客户单位编号
     * @param cCode 客户单位编号
     */
    public void setcCode(String cCode) {
        this.cCode = cCode == null ? null : cCode.trim();
    }

    /**
     * 提交人
     * @return c_submitter 提交人
     */
    public String getcSubmitter() {
        return cSubmitter;
    }

    /**
     * 提交人
     * @param cSubmitter 提交人
     */
    public void setcSubmitter(String cSubmitter) {
        this.cSubmitter = cSubmitter == null ? null : cSubmitter.trim();
    }

    /**
     * 客户
     * @return c_name 客户
     */
    public String getcName() {
        return cName;
    }

    /**
     * 客户
     * @param cName 客户
     */
    public void setcName(String cName) {
        this.cName = cName == null ? null : cName.trim();
    }

    /**
     * 省份
     * @return c_province 省份
     */
    public String getcProvince() {
        return cProvince;
    }

    /**
     * 省份
     * @param cProvince 省份
     */
    public void setcProvince(String cProvince) {
        this.cProvince = cProvince == null ? null : cProvince.trim();
    }

    /**
     * 地区
     * @return c_district 地区
     */
    public String getcDistrict() {
        return cDistrict;
    }

    /**
     * 地区
     * @param cDistrict 地区
     */
    public void setcDistrict(String cDistrict) {
        this.cDistrict = cDistrict == null ? null : cDistrict.trim();
    }

    /**
     * 单位
     * @return c_corporation 单位
     */
    public String getcCorporation() {
        return cCorporation;
    }

    /**
     * 单位
     * @param cCorporation 单位
     */
    public void setcCorporation(String cCorporation) {
        this.cCorporation = cCorporation == null ? null : cCorporation.trim();
    }

    /**
     * 性别
     * @return c_sex 性别
     */
    public String getcSex() {
        return cSex;
    }

    /**
     * 性别
     * @param cSex 性别
     */
    public void setcSex(String cSex) {
        this.cSex = cSex == null ? null : cSex.trim();
    }

    /**
     * 出生年月日
     * @return c_birthday 出生年月日
     */
    public String getcBirthday() {
        return cBirthday;
    }

    /**
     * 出生年月日
     * @param cBirthday 出生年月日
     */
    public void setcBirthday(String cBirthday) {
        this.cBirthday = cBirthday == null ? null : cBirthday.trim();
    }

    /**
     * 年龄
     * @return c_age 年龄
     */
    public Integer getcAge() {
        return cAge;
    }

    /**
     * 年龄
     * @param cAge 年龄
     */
    public void setcAge(Integer cAge) {
        this.cAge = cAge;
    }

    /**
     * 职务
     * @return c_duty 职务
     */
    public String getcDuty() {
        return cDuty;
    }

    /**
     * 职务
     * @param cDuty 职务
     */
    public void setcDuty(String cDuty) {
        this.cDuty = cDuty == null ? null : cDuty.trim();
    }

    /**
     * 行政级别
     * @return c_administrative_level 行政级别
     */
    public String getcAdministrativeLevel() {
        return cAdministrativeLevel;
    }

    /**
     * 行政级别
     * @param cAdministrativeLevel 行政级别
     */
    public void setcAdministrativeLevel(String cAdministrativeLevel) {
        this.cAdministrativeLevel = cAdministrativeLevel == null ? null : cAdministrativeLevel.trim();
    }

    /**
     * 毕业学校
     * @return c_school 毕业学校
     */
    public String getcSchool() {
        return cSchool;
    }

    /**
     * 毕业学校
     * @param cSchool 毕业学校
     */
    public void setcSchool(String cSchool) {
        this.cSchool = cSchool == null ? null : cSchool.trim();
    }

    /**
     * 从警经历
     * @return c_experience 从警经历
     */
    public String getcExperience() {
        return cExperience;
    }

    /**
     * 从警经历
     * @param cExperience 从警经历
     */
    public void setcExperience(String cExperience) {
        this.cExperience = cExperience == null ? null : cExperience.trim();
    }

    /**
     * 手机号
     * @return c_mobile_phone 手机号
     */
    public String getcMobilePhone() {
        return cMobilePhone;
    }

    /**
     * 手机号
     * @param cMobilePhone 手机号
     */
    public void setcMobilePhone(String cMobilePhone) {
        this.cMobilePhone = cMobilePhone == null ? null : cMobilePhone.trim();
    }

    /**
     * 办公电话
     * @return c_phone 办公电话
     */
    public String getcPhone() {
        return cPhone;
    }

    /**
     * 办公电话
     * @param cPhone 办公电话
     */
    public void setcPhone(String cPhone) {
        this.cPhone = cPhone == null ? null : cPhone.trim();
    }

    /**
     * 性格
     * @return c_character 性格
     */
    public String getcCharacter() {
        return cCharacter;
    }

    /**
     * 性格
     * @param cCharacter 性格
     */
    public void setcCharacter(String cCharacter) {
        this.cCharacter = cCharacter == null ? null : cCharacter.trim();
    }

    /**
     * 爱好
     * @return c_hobby 爱好
     */
    public String getcHobby() {
        return cHobby;
    }

    /**
     * 爱好
     * @param cHobby 爱好
     */
    public void setcHobby(String cHobby) {
        this.cHobby = cHobby == null ? null : cHobby.trim();
    }

    /**
     * 吸烟情况
     * @return c_smoke 吸烟情况
     */
    public String getcSmoke() {
        return cSmoke;
    }

    /**
     * 吸烟情况
     * @param cSmoke 吸烟情况
     */
    public void setcSmoke(String cSmoke) {
        this.cSmoke = cSmoke == null ? null : cSmoke.trim();
    }

    /**
     * 酒量
     * @return c_drink 酒量
     */
    public String getcDrink() {
        return cDrink;
    }

    /**
     * 酒量
     * @param cDrink 酒量
     */
    public void setcDrink(String cDrink) {
        this.cDrink = cDrink == null ? null : cDrink.trim();
    }

    /**
     * 健康状况
     * @return c_health 健康状况
     */
    public String getcHealth() {
        return cHealth;
    }

    /**
     * 健康状况
     * @param cHealth 健康状况
     */
    public void setcHealth(String cHealth) {
        this.cHealth = cHealth == null ? null : cHealth.trim();
    }

    /**
     * 家庭成员情况
     * @return c_family 家庭成员情况
     */
    public String getcFamily() {
        return cFamily;
    }

    /**
     * 家庭成员情况
     * @param cFamily 家庭成员情况
     */
    public void setcFamily(String cFamily) {
        this.cFamily = cFamily == null ? null : cFamily.trim();
    }

    /**
     * 客户关系定位
     * @return c_customer_relations 客户关系定位
     */
    public String getcCustomerRelations() {
        return cCustomerRelations;
    }

    /**
     * 客户关系定位
     * @param cCustomerRelations 客户关系定位
     */
    public void setcCustomerRelations(String cCustomerRelations) {
        this.cCustomerRelations = cCustomerRelations == null ? null : cCustomerRelations.trim();
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
}