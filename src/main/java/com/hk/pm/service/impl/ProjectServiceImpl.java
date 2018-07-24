package com.hk.pm.service.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.pm.dao.ClientMapper;
import com.hk.pm.dao.ContractMapper;
import com.hk.pm.dao.ProjectBaseMapper;
import com.hk.pm.dao.ProjectProgressMapper;
import com.hk.pm.dao.ReturnMoneyMapper;
import com.hk.pm.dao.TypeMapper;
import com.hk.pm.entity.Contract;
import com.hk.pm.entity.ProjectBase;
import com.hk.pm.entity.ProjectProgress;
import com.hk.pm.entity.ReturnMoney;
import com.hk.pm.service.ProjectService;
import com.hk.pm.util.ReadConfig;
@Service
public class ProjectServiceImpl implements ProjectService{
	@Autowired
	ProjectBaseMapper projectDao;
	@Autowired
	ContractMapper contractDao;
	@Autowired
	ReturnMoneyMapper returnMoneyDao;
	@Autowired
	TypeMapper typeDao;
	@Autowired
	ProjectProgressMapper progressDao;
	@Autowired
	ClientMapper clientDao;
	
	SimpleDateFormat  sdf=new SimpleDateFormat("yyyyMMdd");
	
	@Override
	public List<Map> queryProjectList(Map map) {
		// TODO Auto-generated method stub
		List<Map> list =new ArrayList<Map>();
		list=projectDao.selectList(map);
		return list;
	}
	@Override
	public List<Map> queryTypeList(Map map) {
		// TODO Auto-generated method stub
		return typeDao.selectList(map);
	}
	@Override
	public ProjectBase show(Map map) {
		ProjectBase project=new ProjectBase();
		String code=getProjectCode(map);
		project.setpCode(code);
		project.setpType(Integer.valueOf(map.get("typeId")+""));
		return project;
	}
	public String getProjectCode(Map map){
		Map<String,Object> typeMap=new HashMap<String,Object>();
		Date date=new Date();
		String dateStr=sdf.format(date);
		String count=projectDao.selectCountByType(map)+1+"";
		switch (count.length()) {
		case 1:
			count="00"+count;
			break;
		case 2:
			count="0"+count;
			break;
		default:
			break;
		}
		typeMap.put("id", map.get("typeId"));
		List<Map> listtype=typeDao.selectList(typeMap);
		String typeCode=listtype.get(0).get("code")+"";
		String code=ReadConfig.springUtil("code")+"-"+typeCode+"-"+count+"-"+dateStr;
		return code;
	}
	@Override
	public void addProject(ProjectBase project) {
		// TODO Auto-generated method stub
		projectDao.insertSelective(project);
	}
	@Override
	public void updateProject(ProjectBase project) {
		// TODO Auto-generated method stub
		projectDao.updateByPrimaryKeySelective(project);
	}
	@Override
	public ProjectBase showPorject(Map	map) {
		// TODO Auto-generated method stub
		return projectDao.selectByPrimaryKey(map);
	}
	@Override
	public void deletePorject(Map map) {
		// TODO Auto-generated method stub
		projectDao.deleteByPrimaryKey(map);
	}
	@Override
	public List<Map> queryListHK(Map map) {
		// TODO Auto-generated method stub
		return projectDao.selectListHK(map);
	}
	@Override
	public ProjectBase showHK(Map map) {
		// TODO Auto-generated method stub
		ProjectBase projectBase=projectDao.selectByPrimaryKey(map);
		ProjectBase project=new ProjectBase();
		String code=getProjectCode(map);
		project.setpCode(code);
		project.setpType(Integer.valueOf(map.get("typeId")+""));
		project.setpManager(projectBase.getpManager());
		project.setpScode(projectBase.getpCode());
		project.setpSname(projectBase.getpName());
		return project;
	}
	@Override
	public void addProject(ProjectBase project, Contract contract, ReturnMoney returnMoney) {
		// TODO Auto-generated method stub
		projectDao.insertSelective(project);
		contract.setpCode(project.getpScode());
		contractDao.insertSelective(contract);
		returnMoney.setcCode(contract.getcCode());
		returnMoney.setrCode(contract.getcCode()+"-"+"R");
		returnMoneyDao.insertSelective(returnMoney);
		
	}
	@Override
	public Map<String,Object> showUpdateProjectHK(Map map) {
		Map<String,Object> maplist=new HashMap<String,Object>();
		// TODO Auto-generated method stub
		Map<String,Object> mapkey=new HashMap<String,Object>();
		Map<String,Object> mapproject=new HashMap<String,Object>();
		mapkey=projectDao.selectCodes(map);
		mapproject.put("id", mapkey.get("id"));
		ProjectBase project=projectDao.selectByPrimaryKey(mapproject);
		Contract contract=contractDao.selectByPrimaryKey(Long.valueOf(mapkey.get("cId")+""));
		ReturnMoney returnMoney =returnMoneyDao.selectByPrimaryKey(Long.valueOf(mapkey.get("rId")+""));
		maplist.put("project", project);
		maplist.put("contract", contract);
		maplist.put("returnMoney", returnMoney);
		return maplist;
	}
	@Override
	public void updateProjectHK(ProjectBase project, Contract contract, ReturnMoney returnMoney) {
		// TODO Auto-generated method stub
		projectDao.updateByPrimaryKeySelective(project);
		contractDao.updateByPrimaryKeySelective(contract);
		returnMoneyDao.updateByPrimaryKeySelective(returnMoney);
	}
	@Override
	public List<Map> queryProjectProgressManagerList(Map map) {
		// TODO Auto-generated method stub
		return projectDao.selectProjectProgressManager(map);
	}

	@Override
	public void addProject(Map map) {
		// TODO Auto-generated method stub
		Map<String,Object> mapp=new HashMap<String,Object>();
		ProjectBase project=(ProjectBase) map.get("projectBase");
		ProjectProgress progress=(ProjectProgress) map.get("progress");
		mapp.put("typeId", project.getpType());
		project.setpCode(getProjectCode(map));
		progress.setpCode(project.getpCode());
		projectDao.insertSelective(project);
		progressDao.insertSelective(progress);
	}
	@Override
	public void upProject(Map map) {
		// TODO Auto-generated method stub
		ProjectBase project=(ProjectBase) map.get("projectBase");
		ProjectProgress progress=(ProjectProgress) map.get("progress");
		projectDao.insertSelective(project);
		progressDao.insertSelective(progress);
	}
	@Override
	public List<Map> queryClientList(Map map) {
		// TODO Auto-generated method stub
		return clientDao.selectClientListByCode(map);
	}
}
