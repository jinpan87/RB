package com.hk.pm.service;

import java.util.List;
import java.util.Map;

import com.hk.pm.entity.Apply;

public interface ApplyService {
	List<Map> queryApplyList(Apply apply);//查询报销申请列表
	List<Map> queryApplyListTop(Map map);//查询每个人的最新一条报销
	Map initApply(Apply apply);//初始化报销
	void addOrUpdateApply(Apply apply);//插入或更新
	Map queryApply(String id);//查询报销单信息
	void removeApply(String id);//删除报销
	List<Map> queryCheckApplyTop(Map map);//审核列表每个人的最新一条查询
	List<Map> queryCheckApply(Apply apply);//审核列表查询
}
