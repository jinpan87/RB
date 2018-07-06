package com.hk.pm.entity;

import java.util.Date;

import org.apache.ibatis.type.Alias;
@Alias("log")
public class Log {
    /**
     * 
     */
    private Integer id;

    /**
     * 
     */
    private String content;

    /**
     * 
     */
    private Date logdate;

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
     * 
     * @return Content 
     */
    public String getContent() {
        return content;
    }

    /**
     * 
     * @param content 
     */
    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    /**
     * 
     * @return LogDate 
     */
    public Date getLogdate() {
        return logdate;
    }

    /**
     * 
     * @param logdate 
     */
    public void setLogdate(Date logdate) {
        this.logdate = logdate;
    }
}