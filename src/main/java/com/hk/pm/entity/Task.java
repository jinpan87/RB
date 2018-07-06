package com.hk.pm.entity;

import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("task")
public class Task {
    /**
     * 
     */
    private Long id;

    /**
     * 发起人
     */
    private Integer initiator;

    /**
     * 任务编号
     */
    private String code;

    /**
     * 客户单位
     */
    private String customer;

    /**
     * 任务内容
     */
    private String content;

    /**
     * 执行人
     */
    private Integer doPerson;

    /**
     * 关联人
     */
    private String relevancePerson;

    /**
     * 任务完成时间
     */
    private String endTime;

    /**
     * 任务开始时间
     */
    private String startTime;

    /**
     * 0:任务开启；1：任务结束
     */
    private Integer state;

    /**
     * 工作进度
     */
    private String progress;

    /**
     * 
     */
    private Date createTime;

    /**
     * 
     * @return _id 
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
     * 发起人
     * @return _initiator 发起人
     */
    public Integer getInitiator() {
        return initiator;
    }

    /**
     * 发起人
     * @param initiator 发起人
     */
    public void setInitiator(Integer initiator) {
        this.initiator = initiator;
    }

    /**
     * 任务编号
     * @return _code 任务编号
     */
    public String getCode() {
        return code;
    }

    /**
     * 任务编号
     * @param code 任务编号
     */
    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }

    /**
     * 客户单位
     * @return _customer 客户单位
     */
    public String getCustomer() {
        return customer;
    }

    /**
     * 客户单位
     * @param customer 客户单位
     */
    public void setCustomer(String customer) {
        this.customer = customer == null ? null : customer.trim();
    }

    /**
     * 任务内容
     * @return _content 任务内容
     */
    public String getContent() {
        return content;
    }

    /**
     * 任务内容
     * @param content 任务内容
     */
    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    /**
     * 执行人
     * @return do_person 执行人
     */
    public Integer getDoPerson() {
        return doPerson;
    }

    /**
     * 执行人
     * @param doPerson 执行人
     */
    public void setDoPerson(Integer doPerson) {
        this.doPerson = doPerson;
    }

    /**
     * 关联人
     * @return relevance_person 关联人
     */
    public String getRelevancePerson() {
        return relevancePerson;
    }

    /**
     * 关联人
     * @param relevancePerson 关联人
     */
    public void setRelevancePerson(String relevancePerson) {
        this.relevancePerson = relevancePerson == null ? null : relevancePerson.trim();
    }

    /**
     * 任务完成时间
     * @return end_time 任务完成时间
     */
    public String getEndTime() {
        return endTime;
    }

    /**
     * 任务完成时间
     * @param endTime 任务完成时间
     */
    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    /**
     * 任务开始时间
     * @return start_time 任务开始时间
     */
    public String getStartTime() {
        return startTime;
    }

    /**
     * 任务开始时间
     * @param startTime 任务开始时间
     */
    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    /**
     * 0:任务开启；1：任务结束
     * @return _state 0:任务开启；1：任务结束
     */
    public Integer getState() {
        return state;
    }

    /**
     * 0:任务开启；1：任务结束
     * @param state 0:任务开启；1：任务结束
     */
    public void setState(Integer state) {
        this.state = state;
    }

    /**
     * 工作进度
     * @return _progress 工作进度
     */
    public String getProgress() {
        return progress;
    }

    /**
     * 工作进度
     * @param progress 工作进度
     */
    public void setProgress(String progress) {
        this.progress = progress == null ? null : progress.trim();
    }

    /**
     * 
     * @return create_time 
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * 
     * @param createTime 
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}