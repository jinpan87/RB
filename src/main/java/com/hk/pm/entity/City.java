package com.hk.pm.entity;

import org.apache.ibatis.type.Alias;
/**
 * 城市
 * @author panjin
 *
 */
@Alias("city")
public class City {
    /**
     * 
     */
    private Integer id;

    /**
     * 省id
     */
    private Integer proId;

    /**
     * 
     */
    private String cityname;

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
     * 省id
     * @return pro_id 省id
     */
    public Integer getProId() {
        return proId;
    }

    /**
     * 省id
     * @param proId 省id
     */
    public void setProId(Integer proId) {
        this.proId = proId;
    }

    /**
     * 
     * @return CityName 
     */
    public String getCityname() {
        return cityname;
    }

    /**
     * 
     * @param cityname 
     */
    public void setCityname(String cityname) {
        this.cityname = cityname == null ? null : cityname.trim();
    }
}