package com.hk.pm.dao;

import com.hk.pm.entity.Contract;

public interface ContractMapper {
    /**
     *
     * @mbggenerated 2018-05-24
     */
    int deleteByPrimaryKey(Long id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insert(Contract record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insertSelective(Contract record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    Contract selectByPrimaryKey(Long id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKeySelective(Contract record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKey(Contract record);
}