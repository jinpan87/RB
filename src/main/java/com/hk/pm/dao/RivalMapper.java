package com.hk.pm.dao;

import com.hk.pm.entity.Rival;

public interface RivalMapper {
    /**
     *
     * @mbggenerated 2018-05-24
     */
    int deleteByPrimaryKey(Long id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insert(Rival record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insertSelective(Rival record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    Rival selectByPrimaryKey(Long id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKeySelective(Rival record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKey(Rival record);
}