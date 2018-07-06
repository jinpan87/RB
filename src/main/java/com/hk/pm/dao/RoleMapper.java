package com.hk.pm.dao;

import com.hk.pm.entity.Role;

public interface RoleMapper {
    /**
     *
     * @mbggenerated 2018-06-27
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2018-06-27
     */
    int insert(Role record);

    /**
     *
     * @mbggenerated 2018-06-27
     */
    int insertSelective(Role record);

    /**
     *
     * @mbggenerated 2018-06-27
     */
    Role selectByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2018-06-27
     */
    int updateByPrimaryKeySelective(Role record);

    /**
     *
     * @mbggenerated 2018-06-27
     */
    int updateByPrimaryKey(Role record);
}