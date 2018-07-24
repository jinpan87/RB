package com.hk.pm.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.hk.pm.entity.BaseObject;
import com.hk.pm.entity.Contract;
import com.hk.pm.entity.ProjectBase;
import com.hk.pm.entity.ReturnMoney;
import com.hk.pm.entity.utilEntity.UtilProject;
import com.hk.pm.service.ProjectService;
import com.hk.pm.util.R;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
/**
 * 项目控制器
 * @author panjin
 *
 */
@RestController
public class ProjectController extends BaseController {
	@Autowired
	ProjectService projectService;
	//查询所有项目基本信息
	@RequestMapping(value="list.do")
	public ModelAndView queryProjectBase(HttpServletResponse response,HttpServletRequest request){
		ModelAndView modelAndView=new ModelAndView("jsp/smartadmin/project/projectList.jsp");
		String typeId=request.getParameter("typeId");
		List<Map> list=new ArrayList<Map>();
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("typeId", typeId);
		list=projectService.queryProjectList(map);
		if(list==null){
			return null;
		}else{
			return getModel(list,modelAndView);
		}
	}
	//查询所有项目基本信息
	@RequestMapping(value="type.do")
	@ResponseBody
	public ModelAndView queryProjectByType(HttpServletResponse response,HttpServletRequest request){
		String typeId=request.getParameter("typeId");
		if(typeId==null){
			typeId="1";
		}
		Map<String,Object> map=new HashMap<String,Object>();
		ModelAndView modelAndView=new ModelAndView("jsp/smartadmin/project/projectList.jsp");
		map.put("typeId", typeId);
		List<Map> list=new ArrayList<Map>();
		list=projectService.queryProjectList(map);
		JSONObject json=JSONObject.fromObject(map);
		modelAndView=getModel(list,modelAndView);
		modelAndView.addObject("json", json);
		return modelAndView;
		
	}
	
	//新增回款、售后列表
	@RequestMapping(value="typeHK.do")
	@ResponseBody
	public ModelAndView queryProjectBytypeHK(HttpServletResponse response,HttpServletRequest request){
		String typeId=request.getParameter("typeId");
		if(typeId==null){
			typeId="1";
		}
		Map<String,Object> map=new HashMap<String,Object>();
		ModelAndView modelAndView=new ModelAndView("jsp/smartadmin/project/projectListHK.jsp");
		map.put("typeId", typeId);
		List<Map> list=new ArrayList<Map>();
		list=projectService.queryListHK(map);
		JSONObject json=JSONObject.fromObject(map);
		modelAndView=getModel(list,modelAndView);
		modelAndView.addObject("json", json);
		return modelAndView;
		
	}
	@RequestMapping(value="project/addcheck.do")
	public Map<String,Object> addcheck(HttpServletResponse response,HttpServletRequest request){
		Map<String,Object> map=new HashMap<String,Object>();
		String typeId=request.getParameter("typeId");
		switch (typeId) {
		case "3":
			map.put("code", 1);
			break;
		default:
			map.put("code", 0);
			break;
		}
		
		return map;
		
	}
	@RequestMapping(value="add.do")
	public ModelAndView add(HttpServletResponse response,HttpServletRequest request,ProjectBase project){
		ModelAndView modelAndView=new ModelAndView();
		String typeId=request.getParameter("typeId");
		switch (typeId) {
		case "2":
			modelAndView.setViewName("jsp/smartadmin/project/addTZProject.jsp");
			break;
		case "3":
			break;
		case "4":
			modelAndView.setViewName("jsp/smartadmin/project/addWHProject.jsp");
			break;
		default:
			modelAndView.setViewName("jsp/smartadmin/project/addXSProject.jsp");
			break;
		}
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("typeId", typeId);
		project=projectService.show(map);
		modelAndView.addObject("project", project);
		return modelAndView;
	
	}
	
	@RequestMapping(value="addHK.do")//添加回款页面
	public ModelAndView addHK(HttpServletResponse response,HttpServletRequest request,ProjectBase project){
		ModelAndView modelAndView=new ModelAndView();
		String id=request.getParameter("id");
		String typeId=request.getParameter("typeId");
			
		modelAndView.setViewName("jsp/smartadmin/project/addHKProject.jsp");
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("id", id);
		map.put("typeId", typeId);
		project=projectService.showHK(map);
		Contract contract=new Contract();
		contract.setcCode(project.getpScode()+"-"+"C");
		modelAndView.addObject("project", project);
		modelAndView.addObject("contract", contract);
		return modelAndView;
		
	}
	
	@RequestMapping(value="addProject.do")//执行添加任务
	public R addProject(HttpServletResponse response,HttpServletRequest request,ProjectBase project){
		projectService.addProject(project);
		return R.ok("添加成功");
	}
	@RequestMapping(value="addProjectHK.do")//执行添加回款、售后任务
	public R addProjectHK(HttpServletResponse response,HttpServletRequest request,BaseObject baseObject){
		Map<String,Object> mapp=new HashMap<String,Object>();
		mapp=juanhuan(baseObject);
		ProjectBase project=new ProjectBase();
		project=(ProjectBase) mapp.get("ProjectBase");
		Contract contract=new Contract();
		contract=(Contract) mapp.get("Contract");
		ReturnMoney returnMoney=new ReturnMoney();
		returnMoney=(ReturnMoney) mapp.get("ReturnMoney");
		projectService.addProject(project,contract,returnMoney);
		return R.ok("添加项目成功");
	}
	
	//展示详细信息
	@SuppressWarnings("unchecked")
	@RequestMapping(value="showProject.do")
	public ModelAndView showProject(HttpServletResponse response,HttpServletRequest request){
		ModelAndView modelAndView=new ModelAndView("jsp/smartadmin/project/showXSProject.jsp");
		String id=request.getParameter("id");
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("id", id);
		ProjectBase project=projectService.showPorject(map);
		int typeId=project.getpType();
		switch (typeId) {
		case 2:
			modelAndView.setViewName("jsp/smartadmin/project/showTZProject.jsp");
			modelAndView.addObject("project", project);
			break;
		case 3:
			modelAndView.setViewName("jsp/smartadmin/project/showHKProject.jsp");
			Map<String,Object> maplist=new HashMap<String,Object>();
			map.put("id", id);
			maplist=projectService.showUpdateProjectHK(map);
			modelAndView.addAllObjects(maplist);
			break;
		case 4:
			modelAndView.setViewName("jsp/smartadmin/project/showWHProject.jsp");
			modelAndView.addObject("project", project);
			break;

		default:
			modelAndView.setViewName("jsp/smartadmin/project/showXSProject.jsp");
			modelAndView.addObject("project", project);
			break;
		}
		
		
		return modelAndView;
	}
	
	//更新
	@RequestMapping(value="updateProject.do")
	@ResponseBody
	public R updateProject(HttpServletResponse response,HttpServletRequest request){
		String id=request.getParameter("id");
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("id", id);
		ProjectBase project=projectService.showPorject(map);
		int typeId=project.getpType();
		int state=project.getpState();
		map.put("state", state);
		map.put("typeId", typeId);
		return R.ok(map);
	}
	
	
	@RequestMapping(value="updateProjectTow.do")
	public Map<String,Object> updateProjectTwo(HttpServletResponse response,HttpServletRequest request,ProjectBase project){
		Map<String,Object> map=new HashMap<String,Object>();
		try {
			projectService.updateProject(project);
			map.put("code", 0);
		} catch (Exception e) {
			// TODO: handle exception
			map.put("code", 1);
		}
		return map;
	}
	@RequestMapping(value="updateProjectHK.do")//回款项目更新
	public R updateProjectHK(HttpServletResponse response,HttpServletRequest request,BaseObject baseObject){
		Map<String,Object> mapp=new HashMap<String,Object>();
		mapp=juanhuan2(baseObject);
		ProjectBase project=new ProjectBase();
		project=(ProjectBase) mapp.get("ProjectBase");
		Contract contract=new Contract();
		contract=(Contract) mapp.get("Contract");
		ReturnMoney returnMoney=new ReturnMoney();
		returnMoney=(ReturnMoney) mapp.get("ReturnMoney");
		projectService.updateProjectHK(project,contract,returnMoney);
		return R.ok("回款项目更新完成");
	}
	
	
	@RequestMapping(value="project/updateProjectThree.do")//显示更新展示页面
	public ModelAndView updateProjectThree(HttpServletResponse response,HttpServletRequest request){
		ModelAndView modelAndView=new ModelAndView();
		Map<String,Object> map=new HashMap<String,Object>();
		ProjectBase project=new ProjectBase ();
		String id=request.getParameter("id");
		String typeId=request.getParameter("typeId");
		switch (typeId) {
		case "2":
			modelAndView.setViewName("jsp/smartadmin/project/updateTZProject.jsp");
			map.put("id", id);
			project=projectService.showPorject(map);
			modelAndView.addObject("project", project);
			break;
		case "3":
			modelAndView.setViewName("jsp/smartadmin/project/updateHKProject.jsp");
			Map<String,Object> maplist=new HashMap<String,Object>();
			map.put("id", id);
			maplist=projectService.showUpdateProjectHK(map);
			modelAndView.addAllObjects(maplist);
			break;
		case "4":
			modelAndView.setViewName("jsp/smartadmin/project/updateWHProject.jsp");
			map.put("id", id);
			project=projectService.showPorject(map);
			modelAndView.addObject("project", project);
			break;
		default:
			modelAndView.setViewName("jsp/smartadmin/project/updateXSProject.jsp");
			map.put("id", id);
			project=projectService.showPorject(map);
			modelAndView.addObject("project", project);
			break;
		}
		return modelAndView;
	}
	
	//删除
	@RequestMapping(value="deleteProject.do")
	public ModelAndView deleteProject(HttpServletResponse response,HttpServletRequest request){
		String id=request.getParameter("id");
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("id", id);
		projectService.deletePorject(map);
		ModelAndView modelAndView=new ModelAndView();
		return modelAndView;
	}
	
	//项目进度管理列表信息查询
	@RequestMapping(value="project/queryProjectProgressManagerList.do")
	public ModelAndView queryProjectProgressManagerList(HttpServletResponse response,HttpServletRequest request){
		ModelAndView modelAndView =new ModelAndView("jsp/smartadmin/project/projectProgressManager.jsp");
		List<Map> list=new ArrayList<Map>();
		list=projectService.queryProjectProgressManagerList(null);
		JSONArray jsonArray=JSONArray.fromObject(list);
		modelAndView.addObject("data", jsonArray);
		return modelAndView;
	}
	//项目进度管理列表信息查询
	@RequestMapping(value="project/projectProgressManager/type.do")
	public ModelAndView queryProjectProgressManagerListByTypeId(HttpServletResponse response,HttpServletRequest request){
		ModelAndView modelAndView =new ModelAndView("jsp/smartadmin/project/projectProgressManager.jsp");
		Map<String,Object> map=new HashMap<String,Object>();
		String typeId=request.getParameter("typeId");
		typeId=Optional.ofNullable(typeId)
				.map(String->request.getParameter("typeId"))
				.orElse("1");
		map.put("typeId", typeId);
		List<Map> list=new ArrayList<Map>();
		list=projectService.queryProjectProgressManagerList(map);
		JSONArray jsonArray=JSONArray.fromObject(list);
		JSONObject json=JSONObject.fromObject(map);
		modelAndView.addObject("data", jsonArray);
		modelAndView.addObject("json",json);
		return modelAndView;
	}
	
	//项目进度管理更新
	@RequestMapping(value="project/editProject.do")
	public R editProject(HttpServletResponse response,HttpServletRequest request,UtilProject utilProject){
		Map<String,Object> map=new HashMap<String,Object>();
		map=utilProjectToProjectBase(utilProject);
		String oper=utilProject.getOper();
		
		switch (oper) {
		case "add":
			projectService.addProject(map);
			break;
		case "edit":
			projectService.upProject(map);
			break;
		case "del":
			
			break;

		default:
			break;
		}
		return R.ok();
	}
	
	//项目进度管理选择区域
	@RequestMapping(value="project/selectCounty.do")
	public R selectCounty(HttpServletResponse response,HttpServletRequest request,UtilProject utilProject){
		String oper=utilProject.getOper();
		switch (oper) {
		case "add":
			
			break;
		case "edit":
			
			break;
		case "del":
			
			break;
			
		default:
			break;
		}
		String typeName=request.getParameter("typeName");
		System.out.println("data:"+oper+"typeName:"+typeName);
		return R.ok();
	}
	
	//获取客户单位下拉列表框
	@RequestMapping(value="project/getCustomerCodeList.do")
	public R getCustomerCodeList(HttpServletResponse response,HttpServletRequest request){
		Map<String,Object> map=new HashMap<String,Object>();
		List<Map> list=new ArrayList<Map>();
		list=projectService.queryClientList(null);
		JSONArray jsonArray=JSONArray.fromObject(list);
		map.put("jsonArray", jsonArray);
		return R.ok(map);
	}
	//获取客户单位下拉列表框
	@RequestMapping(value="project/queryCustomerMsg.do")
	public R queryCustomerMsg(HttpServletResponse response,HttpServletRequest request){
		Map<String,Object> map=new HashMap<String,Object>();
		Map<String,Object> mapp=new HashMap<String,Object>();
		List<Map> list=new ArrayList<Map>();
		String cCode=request.getParameter("customerId");
		mapp.put("cCode", cCode);
		list=projectService.queryClientList(mapp);
		JSONArray jsonArray=JSONArray.fromObject(list);
		map.put("jsonArray", jsonArray);
		return R.ok(map);
	}
	
	@RequestMapping(value="project/getTypeList.do")
	public R getTypeList(HttpServletResponse response,HttpServletRequest request){
		List<Map> list=new ArrayList<Map>();
		Map<String,Object> map=new HashMap<String,Object>();
		list=projectService.queryTypeList(null);
		JSONArray jsonArray=JSONArray.fromObject(list);
		map.put("jsonArray", jsonArray);
		return R.ok(map);
	}
}
