package com.hk.pm.service;

import java.util.List;
import java.util.Map;

import com.hk.pm.entity.Contract;
import com.hk.pm.entity.ProjectBase;
import com.hk.pm.entity.ReturnMoney;
import com.hk.pm.entity.Rival;

public interface ProjectService {
	List<Map> queryProjectList(Map map);
	List<Map> queryTypeList(Map map);//查询项目类型列表
	List<Map> queryListHK(Map map);//非回款、售后的项目列表，新增回款售后项目
	ProjectBase show(Map map);
	ProjectBase showHK(Map map);//需要新增回款项目的对象
	void addProject(ProjectBase project);//添加新的项目
	void addProject(ProjectBase project,Contract contract,ReturnMoney returnMoney);//添加新的项目
	void updateProject(ProjectBase project);//更新项目
	ProjectBase showPorject(Map map);//展示单个项目的详细信息
	void deletePorject(Map map);//展示单个项目的详细信息
	Map showUpdateProjectHK(Map map);//展示更新内容
	void updateProjectHK(ProjectBase project,Contract contract,ReturnMoney returnMoney);//更新新的项目
	
	List<Map> queryProjectProgressManagerList(Map map);//项目进度管理列表查询
	void addProject(Map map);//添加项目进度管理
	void upProject(Map map);//更新项目进度管理
	
	List<Map> queryClientList(Map map);//查询接口人和决策人信息;
	
	List<Map> queryRivalList(Map map);//查询竞争对手列表
}
