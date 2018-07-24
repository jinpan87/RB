package com.hk.pm.dao;

import java.util.List;
import java.util.Map;

import com.hk.pm.entity.Apply;

public interface ApplyMapper {
    /**
     *
     * @mbggenerated 2018-07-11
     */
    int deleteByPrimaryKey(String id);

    /**
     *
     * @mbggenerated 2018-07-11
     */
    int insert(Apply record);

   
    int insertSelective(Apply record);//插入更新

    Apply selectByPrimaryKey(String id);//通过id查询报销单
    
    List<Map> selectApplyList(Apply apply);//查询展示列表
    
    List<Map> selectApplyListTotalMoney(Apply apply);//查询每个人的总金额
    
    
    List<Map> selectApplyListTop(Map map);//查询每个人的最新一条报销

    /**
     *
     * @mbggenerated 2018-07-11
     */
    int updateByPrimaryKeySelective(Apply record);

    /**
     *
     * @mbggenerated 2018-07-11
     */
    int updateByPrimaryKey(Apply record);
}