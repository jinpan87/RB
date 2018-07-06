package com.hk.pm.dao;

import java.util.List;

import com.hk.pm.entity.City;

public interface CityMapper {
    /**
     *
     * @mbggenerated 2018-05-24
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insert(City record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insertSelective(City record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    City selectByPrimaryKey(Integer id);
    
    City selectByName(String name);//根据名称查询
    
    
    List<City> selectCityList();//查询所有城市信息列表

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKeySelective(City record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKey(City record);
}