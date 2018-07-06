package com.hk.pm.entity;

import org.apache.ibatis.type.Alias;
/**
 * 区县
 * @author panjin
 *
 */
@Alias("county")
public class County {
    /**
     * 
     */
    private Integer id;

    /**
     * 
     */
    private Integer cityId;

    /**
     * 
     */
    private String countyname;

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
     * @return city_id 
     */
    public Integer getCityId() {
        return cityId;
    }

    /**
     * 
     * @param cityId 
     */
    public void setCityId(Integer cityId) {
        this.cityId = cityId;
    }

    /**
     * 
     * @return CountyName 
     */
    public String getCountyname() {
        return countyname;
    }

    /**
     * 
     * @param countyname 
     */
    public void setCountyname(String countyname) {
        this.countyname = countyname == null ? null : countyname.trim();
    }
}