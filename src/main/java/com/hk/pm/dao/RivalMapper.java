package com.hk.pm.dao;

import java.util.List;
import java.util.Map;

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
    
    List<Map> selectRivalList(Map map);//查询竞争对手列表
    
    List<Rival> selectRivalListMsg();//查询竞争对手列表
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