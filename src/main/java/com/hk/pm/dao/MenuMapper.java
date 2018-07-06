package com.hk.pm.dao;

import com.hk.pm.entity.Menu;

public interface MenuMapper {
    /**
     *
     * @mbggenerated 2018-05-28
     */
    int deleteByPrimaryKey(Long menuId);

    /**
     *
     * @mbggenerated 2018-05-28
     */
    int insert(Menu record);

    /**
     *
     * @mbggenerated 2018-05-28
     */
    int insertSelective(Menu record);

    /**
     *
     * @mbggenerated 2018-05-28
     */
    Menu selectByPrimaryKey(Long menuId);

    /**
     *
     * @mbggenerated 2018-05-28
     */
    int updateByPrimaryKeySelective(Menu record);

    /**
     *
     * @mbggenerated 2018-05-28
     */
    int updateByPrimaryKey(Menu record);
}