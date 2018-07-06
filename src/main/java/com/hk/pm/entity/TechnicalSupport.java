package com.hk.pm.entity;

import java.util.Date;

import org.apache.ibatis.type.Alias;
/**
 * 技术支持任务
 * @author panjin
 *
 */
@Alias("technicalSupport")
public class TechnicalSupport {
    /**
     * 主键
     */
    private Long id;

    /**
     * 任务编号
     */
    private String tsCode;

    /**
     * 任务名称
     */
    private String tsTask;

    /**
     * 详细任务内容
     */
    private String tsContent;

    /**
     * 执行人编号
     */
    private Integer tsExecutor;

    /**
     * 关联人
     */
    private String tsAffiliated;

    /**
     * 发起人
     */
    private Integer tsInitiator;

    /**
     * 任务状态；0开启；1结束
     */
    private Integer tsStatus;

    /**
     * 开始时间
     */
    private Date startTime;

    /**
     * 结束时间
     */
    private Date endTime;

    /**
     * 主键
     * @return id 主键
     */
    public Long getId() {
        return id;
    }

    /**
     * 主键
     * @param id 主键
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 任务编号
     * @return ts_code 任务编号
     */
    public String getTsCode() {
        return tsCode;
    }

    /**
     * 任务编号
     * @param tsCode 任务编号
     */
    public void setTsCode(String tsCode) {
        this.tsCode = tsCode == null ? null : tsCode.trim();
    }

    /**
     * 任务名称
     * @return ts_task 任务名称
     */
    public String getTsTask() {
        return tsTask;
    }

    /**
     * 任务名称
     * @param tsTask 任务名称
     */
    public void setTsTask(String tsTask) {
        this.tsTask = tsTask == null ? null : tsTask.trim();
    }

    /**
     * 详细任务内容
     * @return ts_content 详细任务内容
     */
    public String getTsContent() {
        return tsContent;
    }

    /**
     * 详细任务内容
     * @param tsContent 详细任务内容
     */
    public void setTsContent(String tsContent) {
        this.tsContent = tsContent == null ? null : tsContent.trim();
    }

    /**
     * 执行人编号
     * @return ts_executor 执行人编号
     */
    public Integer getTsExecutor() {
        return tsExecutor;
    }

    /**
     * 执行人编号
     * @param tsExecutor 执行人编号
     */
    public void setTsExecutor(Integer tsExecutor) {
        this.tsExecutor = tsExecutor;
    }

    /**
     * 关联人
     * @return ts_affiliated 关联人
     */
    public String getTsAffiliated() {
        return tsAffiliated;
    }

    /**
     * 关联人
     * @param tsAffiliated 关联人
     */
    public void setTsAffiliated(String tsAffiliated) {
        this.tsAffiliated = tsAffiliated == null ? null : tsAffiliated.trim();
    }

    /**
     * 发起人
     * @return ts_initiator 发起人
     */
    public Integer getTsInitiator() {
        return tsInitiator;
    }

    /**
     * 发起人
     * @param tsInitiator 发起人
     */
    public void setTsInitiator(Integer tsInitiator) {
        this.tsInitiator = tsInitiator;
    }

    /**
     * 任务状态；0开启；1结束
     * @return ts_status 任务状态；0开启；1结束
     */
    public Integer getTsStatus() {
        return tsStatus;
    }

    /**
     * 任务状态；0开启；1结束
     * @param tsStatus 任务状态；0开启；1结束
     */
    public void setTsStatus(Integer tsStatus) {
        this.tsStatus = tsStatus;
    }

    /**
     * 开始时间
     * @return start_time 开始时间
     */
    public Date getStartTime() {
        return startTime;
    }

    /**
     * 开始时间
     * @param startTime 开始时间
     */
    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    /**
     * 结束时间
     * @return end_time 结束时间
     */
    public Date getEndTime() {
        return endTime;
    }

    /**
     * 结束时间
     * @param endTime 结束时间
     */
    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }
}