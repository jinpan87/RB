package com.hk.pm.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.hk.pm.entity.Record;

public interface RecordMapper {
    /**
     *
     * @mbggenerated 2018-05-24
     */
    int deleteByPrimaryKey(@Param("id") Integer id, @Param("rUid") Integer rUid);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insert(Record record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    
    int insertSelective(Record record);
    
    void insertOrUpdateRecord(Record record);//插入更新

    Record selectByPrimaryKey(Integer id);//根据id查询日报
    
    /**
     * 查询列表展示信息
     */
    List<Map> selectRecordList(Map map);
    
    List<Map> selectRecordListByUserId(Map map);//查询userId相同的所有日报
    
    List<Map> selectStatisticByPerson(Record record);//查询项目中每个人的工时和报销金额
    
    List<Map> selectStatisticMessage(Record record);//查询项目日报汇总列表
    
    Map selectStatistic(Record record);//查询项目的总工时和金额
    
    List<Map> selectByBfsj(Record record);//查询拜访时间三天以内的日报
    
    List<Map> selectByWeek(Map map);//查询一周内没有日报的项目
    
    Map selectByCode(Map map);//根据项目编号查询项目的最近一次日报信息
    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKeySelective(Record record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKey(Record record);
}