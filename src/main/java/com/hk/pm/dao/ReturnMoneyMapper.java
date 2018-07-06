package com.hk.pm.dao;

import com.hk.pm.entity.ReturnMoney;

public interface ReturnMoneyMapper {
    /**
     *
     * @mbggenerated 2018-05-24
     */
    int deleteByPrimaryKey(Long id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insert(ReturnMoney record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insertSelective(ReturnMoney record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    ReturnMoney selectByPrimaryKey(Long id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKeySelective(ReturnMoney record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKey(ReturnMoney record);
}