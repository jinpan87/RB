package com.hk.pm.dao;

import com.hk.pm.entity.TechnicalSupport;

public interface TechnicalSupportMapper {
    /**
     *
     * @mbggenerated 2018-05-24
     */
    int deleteByPrimaryKey(Long id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insert(TechnicalSupport record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insertSelective(TechnicalSupport record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    TechnicalSupport selectByPrimaryKey(Long id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKeySelective(TechnicalSupport record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKey(TechnicalSupport record);
}