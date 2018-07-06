package com.hk.pm.dao;

import com.hk.pm.entity.CashDeposit;

public interface CashDepositMapper {
    /**
     *
     * @mbggenerated 2018-05-24
     */
    int deleteByPrimaryKey(Long id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insert(CashDeposit record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insertSelective(CashDeposit record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    CashDeposit selectByPrimaryKey(Long id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKeySelective(CashDeposit record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKey(CashDeposit record);
}