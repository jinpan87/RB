package com.hk.pm.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.pm.dao.ApplyMapper;
import com.hk.pm.dao.ProjectBaseMapper;
import com.hk.pm.dao.TypeMapper;
import com.hk.pm.entity.Apply;
import com.hk.pm.entity.ProjectBase;
import com.hk.pm.service.ApplyService;
@Service
public class ApplyServiceImpl implements ApplyService {

	@Autowired
	ApplyMapper applyDao;
	@Autowired
	TypeMapper typeDao;
	@Autowired
	ProjectBaseMapper projectDao;
	@Override
	public List<Map> queryApplyList(Apply apply) {
		// TODO Auto-generated method stub
		List<Map> list=new ArrayList<Map>();
		list.addAll(applyDao.selectApplyList(apply));
		list.addAll(applyDao.selectApplyListTotalMoney(apply));
		return list;
	}
	@Override
	public Map initApply(Apply apply) {
		// TODO Auto-generated method stub
		Map<String,Object> mapp=new HashMap<String,Object>();
		Map<String,Object> map=new HashMap<String,Object>();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
		List<Map> typeList=new ArrayList<Map>();
		List<ProjectBase> projectList=new ArrayList<ProjectBase>();
		apply.setId(Optional.ofNullable(apply.getId())
				.map(Integer->apply.getId())
				.orElse(apply.getaProposer()+"_"+sdf.format(new Date())));
		typeList=typeDao.selectList(null);
		int pType=(int) Optional.ofNullable(apply.getaApprover())
		        .map(Integer->apply.getaApprover())
		        .orElse(1);
		apply.setaApprover(null);//清理掉带过来的项目类型参数
		map.put("pType", pType);
		projectList=projectDao.selectProjectList(map);
		mapp.put("apply", apply);
		mapp.put("typeList", typeList);
		mapp.put("projectList", projectList);
		return mapp;
	}
	@Override
	public void addOrUpdateApply(Apply apply) {
		// TODO Auto-generated method stub
		applyDao.insertSelective(apply);
	}
	@Override
	public Map queryApply(String id) {
		// TODO Auto-generated method stub
		Map<String,Object> map=new HashMap<String,Object>();
		List<Map> typeList=new ArrayList<Map>();
		List<ProjectBase> projectList=new ArrayList<ProjectBase>();
		Apply apply=new Apply();
		apply=applyDao.selectByPrimaryKey(id);
		apply.setaApprover(null);
		apply.setaState(0);
		apply.setaReason(null);
		map.put("pCode", apply.getaProjectCode());
		projectList=projectDao.selectProjectList(map);
		map.clear();
		map.put("pType", projectList.get(0).getpType());
		projectList=projectDao.selectProjectList(map);
		typeList=typeDao.selectList(null);
		map.clear();
		map.put("apply", apply);
		map.put("typeList", typeList);
		map.put("projectList", projectList);
		return map;
	}
	@Override
	public void removeApply(String id) {
		// TODO Auto-generated method stub
		applyDao.deleteByPrimaryKey(id);
	}
	@Override
	public List<Map> queryApplyListTop(Map map) {
		// TODO Auto-generated method stub
		List<Map> list=new ArrayList<Map>();
		Map<String,Object> mapp=new HashMap<String,Object>();
		String roleId = map.get("roleId") + "";
		String userId=map.get("userId")+"";
		switch (roleId) {
		case "1":
			list = applyDao.selectApplyListTop(mapp);
			break;
		case "2":
			mapp.put("roleId", 2);
			mapp.put("userId", userId);
			list = applyDao.selectApplyListTop(mapp);
			mapp.put("roleId", 5);
			mapp.put("userId", null);
			list.addAll(applyDao.selectApplyListTop(mapp));
			break;
		case "3":
			mapp.put("roleId", 3);
			mapp.put("userId", userId);
			list = applyDao.selectApplyListTop(mapp);
			mapp.put("roleId", 6);
			mapp.put("userId", null);
			list.addAll(applyDao.selectApplyListTop(mapp));
			break;
		case "4":
			list = applyDao.selectApplyListTop(null);
			break;
		case "5":
			mapp.put("roleId", 5);
			mapp.put("userId", userId);
			list = applyDao.selectApplyListTop(mapp);
			break;
		case "6":
			mapp.put("roleId", 6);
			mapp.put("userId", userId);
			list = applyDao.selectApplyListTop(mapp);
			break;
		default:
			break;
		}
		return list;
	}
	@Override
	public List<Map> queryCheckApplyTop(Map map) {
		// TODO Auto-generated method stub
		Map<String,Object> mapp=new HashMap<String,Object>();
		List<Map> list = new ArrayList<Map>();
		String roleId = map.get("roleId") + "";
		switch (roleId) {
		case "1":
			mapp.put("roleId", 1);
			list.addAll(applyDao.selectApplyListTop(mapp));
			mapp.put("roleId", 2);
			list.addAll(applyDao.selectApplyListTop(mapp));
			mapp.put("roleId", 3);
			list.addAll(applyDao.selectApplyListTop(mapp));
			mapp.put("roleId", 4);
			list.addAll(applyDao.selectApplyListTop(mapp));
			break;
		case "2":
			mapp.put("roleId", 5);
			list.addAll(applyDao.selectApplyListTop(mapp));
			break;
		case "3":
			mapp.put("roleId", 6);
			list.addAll(applyDao.selectApplyListTop(mapp));
			break;
		default:
			break;
		}
		return list;
	}
	@Override
	public List<Map> queryCheckApply(Apply apply) {
		// TODO Auto-generated method stub
		return applyDao.selectApplyList(apply);
	}

}
