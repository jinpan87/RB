package com.hk.pm.entity;

import org.apache.ibatis.type.Alias;
/**
 * 省
 * @author panjin
 *
 */
@Alias("province")
public class Province {
    /**
     * 角色ID
     */
    private Integer id;

    /**
     * 省名
     */
    private String proName;

    /**
     * 角色ID
     * @return id 角色ID
     */
    public Integer getId() {
        return id;
    }

    /**
     * 角色ID
     * @param id 角色ID
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 省名
     * @return pro_name 省名
     */
    public String getProName() {
        return proName;
    }

    /**
     * 省名
     * @param proName 省名
     */
    public void setProName(String proName) {
        this.proName = proName == null ? null : proName.trim();
    }
}