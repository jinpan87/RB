package com.hk.pm.dao;

import com.hk.pm.entity.Province;

public interface ProvinceMapper {
    /**
     *
     * @mbggenerated 2018-05-24
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insert(Province record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insertSelective(Province record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    Province selectByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKeySelective(Province record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKey(Province record);
}