package com.hk.pm.entity;

import java.util.Date;

import org.apache.ibatis.type.Alias;
/**
 * 日报
 * @author panjin
 *
 */
@Alias("record")
public class Record {
    /**
     * 
     */
    private Integer id;

    /**
     * 员工编号
     */
    private Integer rUid;

    /**
     * 开始时间
     */
    private String rKssj;

    /**
     * 结束时间
     */
    private String rJssj;

    /**
     * 工时
     */
    private String rGs;

    /**
     * 项目类别
     */
    private String rXmlb;

    /**
     * 项目名称
     */
    private String rXmmc;

    /**
     * 项目编号
     */
    private String rXmbh;

    /**
     * 项目阶段
     */
    private String rXmjd;

    /**
     * 详细工作
     */
    private String rXxgz;

    /**
     * 完成情况
     */
    private String rWcqk;

    /**
     * 报销金额
     */
    private String rBxje;

    /**
     * 发票后4位
     */
    private String rFphsw;

    /**
     * 开票单位
     */
    private String rKpdw;

    /**
     * 创建时间
     */
    private String rCreatedate;

    /**
     * 状态：0未审批 其它审批人
     */
    private String rState;

    /**
     * 自评分
     */
    private String rZpf;

    /**
     * 评审分
     */
    private String rSpf;

    /**
     * 
     */
    private String rCsmc;

    /**
     * 
     */
    private String rQxmc;

    /**
     * 
     */
    private String rKhdw;

    /**
     * 
     */
    private String rBfry;

    /**
     * 
     */
    private String rBffs;

    /**
     * 
     */
    private String rBfsj;

    /**
     * 
     * @return id 
     */
    public Integer getId() {
        return id;
    }

    /**
     * 
     * @param id 
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 员工编号
     * @return r_uid 员工编号
     */
    public Integer getrUid() {
        return rUid;
    }

    /**
     * 员工编号
     * @param rUid 员工编号
     */
    public void setrUid(Integer rUid) {
        this.rUid = rUid;
    }

    /**
     * 开始时间
     * @return r_kssj 开始时间
     */
    public String getrKssj() {
        return rKssj;
    }

    /**
     * 开始时间
     * @param rKssj 开始时间
     */
    public void setrKssj(String rKssj) {
        this.rKssj = rKssj;
    }

    /**
     * 结束时间
     * @return r_jssj 结束时间
     */
    public String getrJssj() {
        return rJssj;
    }

    /**
     * 结束时间
     * @param rJssj 结束时间
     */
    public void setrJssj(String rJssj) {
        this.rJssj = rJssj;
    }

    /**
     * 工时
     * @return r_gs 工时
     */
    public String getrGs() {
        return rGs;
    }

    /**
     * 工时
     * @param rGs 工时
     */
    public void setrGs(String rGs) {
        this.rGs = rGs == null ? null : rGs.trim();
    }

    /**
     * 项目类别
     * @return r_xmlb 项目类别
     */
    public String getrXmlb() {
        return rXmlb;
    }

    /**
     * 项目类别
     * @param rXmlb 项目类别
     */
    public void setrXmlb(String rXmlb) {
        this.rXmlb = rXmlb == null ? null : rXmlb.trim();
    }

    /**
     * 项目名称
     * @return r_xmmc 项目名称
     */
    public String getrXmmc() {
        return rXmmc;
    }

    /**
     * 项目名称
     * @param rXmmc 项目名称
     */
    public void setrXmmc(String rXmmc) {
        this.rXmmc = rXmmc == null ? null : rXmmc.trim();
    }

    /**
     * 项目编号
     * @return r_xmbh 项目编号
     */
    public String getrXmbh() {
        return rXmbh;
    }

    /**
     * 项目编号
     * @param rXmbh 项目编号
     */
    public void setrXmbh(String rXmbh) {
        this.rXmbh = rXmbh == null ? null : rXmbh.trim();
    }

    /**
     * 项目阶段
     * @return r_xmjd 项目阶段
     */
    public String getrXmjd() {
        return rXmjd;
    }

    /**
     * 项目阶段
     * @param rXmjd 项目阶段
     */
    public void setrXmjd(String rXmjd) {
        this.rXmjd = rXmjd == null ? null : rXmjd.trim();
    }

    /**
     * 详细工作
     * @return r_xxgz 详细工作
     */
    public String getrXxgz() {
        return rXxgz;
    }

    /**
     * 详细工作
     * @param rXxgz 详细工作
     */
    public void setrXxgz(String rXxgz) {
        this.rXxgz = rXxgz == null ? null : rXxgz.trim();
    }

    /**
     * 完成情况
     * @return r_wcqk 完成情况
     */
    public String getrWcqk() {
        return rWcqk;
    }

    /**
     * 完成情况
     * @param rWcqk 完成情况
     */
    public void setrWcqk(String rWcqk) {
        this.rWcqk = rWcqk == null ? null : rWcqk.trim();
    }

    /**
     * 报销金额
     * @return r_bxje 报销金额
     */
    public String getrBxje() {
        return rBxje;
    }

    /**
     * 报销金额
     * @param rBxje 报销金额
     */
    public void setrBxje(String rBxje) {
        this.rBxje = rBxje == null ? null : rBxje.trim();
    }

    /**
     * 发票后4位
     * @return r_fphsw 发票后4位
     */
    public String getrFphsw() {
        return rFphsw;
    }

    /**
     * 发票后4位
     * @param rFphsw 发票后4位
     */
    public void setrFphsw(String rFphsw) {
        this.rFphsw = rFphsw == null ? null : rFphsw.trim();
    }

    /**
     * 开票单位
     * @return r_kpdw 开票单位
     */
    public String getrKpdw() {
        return rKpdw;
    }

    /**
     * 开票单位
     * @param rKpdw 开票单位
     */
    public void setrKpdw(String rKpdw) {
        this.rKpdw = rKpdw == null ? null : rKpdw.trim();
    }

    /**
     * 创建时间
     * @return r_createdate 创建时间
     */
    public String getrCreatedate() {
        return rCreatedate;
    }

    /**
     * 创建时间
     * @param rCreatedate 创建时间
     */
    public void setrCreatedate(String rCreatedate) {
        this.rCreatedate = rCreatedate == null ? null : rCreatedate.trim();
    }

    /**
     * 状态：0未审批 其它审批人
     * @return r_state 状态：0未审批 其它审批人
     */
    public String getrState() {
        return rState;
    }

    /**
     * 状态：0未审批 其它审批人
     * @param rState 状态：0未审批 其它审批人
     */
    public void setrState(String rState) {
        this.rState = rState == null ? null : rState.trim();
    }

    /**
     * 自评分
     * @return r_zpf 自评分
     */
    public String getrZpf() {
        return rZpf;
    }

    /**
     * 自评分
     * @param rZpf 自评分
     */
    public void setrZpf(String rZpf) {
        this.rZpf = rZpf == null ? null : rZpf.trim();
    }

    /**
     * 评审分
     * @return r_spf 评审分
     */
    public String getrSpf() {
        return rSpf;
    }

    /**
     * 评审分
     * @param rSpf 评审分
     */
    public void setrSpf(String rSpf) {
        this.rSpf = rSpf == null ? null : rSpf.trim();
    }

    /**
     * 
     * @return r_csmc 
     */
    public String getrCsmc() {
        return rCsmc;
    }

    /**
     * 
     * @param rCsmc 
     */
    public void setrCsmc(String rCsmc) {
        this.rCsmc = rCsmc == null ? null : rCsmc.trim();
    }

    /**
     * 
     * @return r_qxmc 
     */
    public String getrQxmc() {
        return rQxmc;
    }

    /**
     * 
     * @param rQxmc 
     */
    public void setrQxmc(String rQxmc) {
        this.rQxmc = rQxmc == null ? null : rQxmc.trim();
    }

    /**
     * 
     * @return r_khdw 
     */
    public String getrKhdw() {
        return rKhdw;
    }

    /**
     * 
     * @param rKhdw 
     */
    public void setrKhdw(String rKhdw) {
        this.rKhdw = rKhdw == null ? null : rKhdw.trim();
    }

    /**
     * 
     * @return r_bfry 
     */
    public String getrBfry() {
        return rBfry;
    }

    /**
     * 
     * @param rBfry 
     */
    public void setrBfry(String rBfry) {
        this.rBfry = rBfry == null ? null : rBfry.trim();
    }

    /**
     * 
     * @return r_bffs 
     */
    public String getrBffs() {
        return rBffs;
    }

    /**
     * 
     * @param rBffs 
     */
    public void setrBffs(String rBffs) {
        this.rBffs = rBffs == null ? null : rBffs.trim();
    }

    /**
     * 
     * @return r_bfsj 
     */
    public String getrBfsj() {
        return rBfsj;
    }

    /**
     * 
     * @param rBfsj 
     */
    public void setrBfsj(String rBfsj) {
        this.rBfsj = rBfsj == null ? null : rBfsj.trim();
    }
}