package com.hk.pm.dao;

import com.hk.pm.entity.Budget;

public interface BudgetMapper {
    /**
     *
     * @mbggenerated 2018-05-24
     */
    int deleteByPrimaryKey(Long id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insert(Budget record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insertSelective(Budget record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    Budget selectByPrimaryKey(Long id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKeySelective(Budget record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKey(Budget record);
}