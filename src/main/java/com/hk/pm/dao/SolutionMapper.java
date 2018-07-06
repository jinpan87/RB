package com.hk.pm.dao;

import com.hk.pm.entity.Solution;

public interface SolutionMapper {
    /**
     *
     * @mbggenerated 2018-05-24
     */
    int deleteByPrimaryKey(Long id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insert(Solution record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insertSelective(Solution record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    Solution selectByPrimaryKey(Long id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKeySelective(Solution record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKey(Solution record);
}