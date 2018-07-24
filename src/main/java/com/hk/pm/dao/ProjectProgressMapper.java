package com.hk.pm.dao;

import com.hk.pm.entity.ProjectProgress;

public interface ProjectProgressMapper {
    /**
     *
     * @mbggenerated 2018-05-24
     */
    int deleteByPrimaryKey(Long id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insert(ProjectProgress record);

   
    int insertSelective(ProjectProgress record);//插入更新

    /**
     *
     * @mbggenerated 2018-05-24
     */
    ProjectProgress selectByPrimaryKey(Long id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKeySelective(ProjectProgress record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKey(ProjectProgress record);
}