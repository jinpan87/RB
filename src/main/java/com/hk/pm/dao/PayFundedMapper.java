package com.hk.pm.dao;

import com.hk.pm.entity.PayFunded;

public interface PayFundedMapper {
    /**
     *
     * @mbggenerated 2018-05-24
     */
    int deleteByPrimaryKey(Long id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insert(PayFunded record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insertSelective(PayFunded record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    PayFunded selectByPrimaryKey(Long id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKeySelective(PayFunded record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKey(PayFunded record);
}