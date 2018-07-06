package com.hk.pm.dao;

import java.util.List;
import java.util.Map;

import com.hk.pm.entity.Type;

public interface TypeMapper {
    /**
     *
     * @mbggenerated 2018-05-24
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insert(Type record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insertSelective(Type record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    Type selectByPrimaryKey(Integer id);
    
    /**
     * 查询类型列表
     * @return
     */
    List<Map> selectList(Map map);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKeySelective(Type record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKey(Type record);
}