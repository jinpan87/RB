package com.hk.pm.service;

import java.util.List;
import java.util.Map;

import com.hk.pm.entity.County;
import com.hk.pm.entity.Record;

public interface DailyService {
	Map<String,Object> getDailyMessage(Map map);//添加日报初始化信息
	List<County> getCountyList(int cityId);
	void addRecord(Record record);//添加日报
	List<Map> queryRecordList(Map map);//查询个人日报信息
	List<Map> queryCheckList(Map map);//条件查询审批未审批的列表
	void updateRecord(Record record);//更新日报
	Map<String,Object> getStatisticProject(Record record);//获得项目统计信息
	List<Map> selectByWeek(Map map);//查询一周内没有日报的项目
	List<Map> selectByBfsj(Record record);//查询拜访时间三天以内的日报
	Record queryRecord(int id);//通过ID查询日报
	Record stringToInt(Record r);//城市名称转编号
}
