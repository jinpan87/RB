package com.hk.pm.dao;

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