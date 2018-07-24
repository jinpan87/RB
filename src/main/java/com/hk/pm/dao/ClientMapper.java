package com.hk.pm.dao;

import java.util.List;
import java.util.Map;

import com.hk.pm.entity.Client;

public interface ClientMapper {
    /**
     *
     * @mbggenerated 2018-05-24
     */
    int deleteByPrimaryKey(Long id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insert(Client record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insertSelective(Client record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    Client selectByPrimaryKey(Long id);
    
    List<Map> selectClientListByCode(Map map);//查询接口人和决策人信息

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKeySelective(Client record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKey(Client record);
}