package com.hk.pm.dao;

import java.util.List;
import java.util.Map;

import com.hk.pm.entity.Task;

public interface TaskMapper {
    /**
     *
     * @mbggenerated 2018-06-27
     */
    int deleteByPrimaryKey(Long id);

    /**
     *
     * @mbggenerated 2018-06-27
     */
    int insert(Task record);

 
    int insertSelective(Task record);//创建新的任务

  
    Task selectByPrimaryKey(Long id);
    
    Task selectByCode(Task task);//根据任务编号code查看任务详细信息
    
    List<Map> selectTaskListByState(Task task);//任务列表展示
    
    int updateState(Task task);//更新任务状态
    
    int  updateProgress(Task task);//跟新任务进度
    /**
     *
     * @mbggenerated 2018-06-27
     */
    int updateByPrimaryKeySelective(Task record);

    /**
     *
     * @mbggenerated 2018-06-27
     */
    int updateByPrimaryKey(Task record);
}