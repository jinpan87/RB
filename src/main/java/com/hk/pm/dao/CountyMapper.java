package com.hk.pm.dao;

import java.util.List;

import com.hk.pm.entity.County;

public interface CountyMapper {
    /**
     *
     * @mbggenerated 2018-05-24
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insert(County record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insertSelective(County record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    County selectByPrimaryKey(Integer id);
    
    
    List<County> selectByCityId(Integer cityId);//通过城市id查询区县列表

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKeySelective(County record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKey(County record);
}