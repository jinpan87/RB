package com.hk.pm.dao;

import java.util.List;
import java.util.Map;

import com.hk.pm.entity.ProjectBase;

public interface ProjectBaseMapper {
    /**
     *通过主键删除一个
     * @mbggenerated 2018-05-24
     */
    int deleteByPrimaryKey(Map map);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insert(ProjectBase record);

    /**
     *添加新的项目
     * @mbggenerated 2018-05-24
     */
    int insertSelective(ProjectBase record);

    /**
     *查询一个
     * @mbggenerated 2018-05-24
     */
    ProjectBase selectByPrimaryKey(Map	map);
    
    List<ProjectBase> selectProjectList(Map map);//查询项目列表
    
    List<Map> selectList(Map map);//查询所有项目基本信息
    
    List<Map> selectListHK(Map map);//查询需要添加回款、售后的项目列表
    
    Map selectCodes(Map map);//查询回款项目的项目编号、合同号、回款单号
    
    int selectCountByType(Map map);//分类查询项目的个数
    
    List<Map> selectProjectProgressManager(Map map);//项目进度管理列表查询
    
    /**
     *更新一个
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKeySelective(ProjectBase record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKey(ProjectBase record);
}