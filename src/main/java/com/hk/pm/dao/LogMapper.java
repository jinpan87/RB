package com.hk.pm.dao;

import com.hk.pm.entity.Log;

public interface LogMapper {
    /**
     *
     * @mbggenerated 2018-05-24
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insert(Log record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insertSelective(Log record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    Log selectByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKeySelective(Log record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKey(Log record);
}