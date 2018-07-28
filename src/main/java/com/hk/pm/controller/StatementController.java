package com.hk.pm.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.hk.pm.entity.Client;
import com.hk.pm.entity.Contract;
import com.hk.pm.entity.ProjectBase;
import com.hk.pm.entity.ReturnMoney;
import com.hk.pm.entity.Rival;
import com.hk.pm.service.StatementService;
import com.hk.pm.util.R;

import net.sf.json.JSONArray;

@RestController
@RequestMapping(value="statement/")
public class StatementController {
	@Autowired
	StatementService statementService;
	
	@RequestMapping(value="customer.do")//查询客户信息列表
	public ModelAndView queryClienList(HttpServletResponse response,HttpServletRequest request){
		ModelAndView model=new ModelAndView("jsp/smartadmin/statement/customer.jsp");
		List<Client> list=new ArrayList<Client>();
		list=statementService.queryClientList();
		JSONArray jsonArray=JSONArray.fromObject(list);
		model.addObject("jsonArray", jsonArray);
		return model;
	}
	
	@RequestMapping(value="editClient.do")//增删改
	public R editClient(HttpServletResponse response,HttpServletRequest request,Client client){
		String oper=client.getOper();
		switch (oper) {
		case "add":
			statementService.editClient(client);
			break;
		case "edit":
			statementService.editClient(client);
			break;
		case "del":
			
			break;

		default:
			break;
		}
		return R.ok();
	}
	@RequestMapping(value="rival.do")//查询客户信息列表
	public ModelAndView queryRivalList(HttpServletResponse response,HttpServletRequest request){
		ModelAndView model=new ModelAndView("jsp/smartadmin/statement/rival.jsp");
		List<Rival> list=new ArrayList<Rival>();
		list=statementService.queryRival();
		JSONArray jsonArray=JSONArray.fromObject(list);
		model.addObject("jsonArray", jsonArray);
		return model;
	}
	
	@RequestMapping(value="editRival.do")//增删改
	public R editRival(HttpServletResponse response,HttpServletRequest request,Rival r){
		String oper=r.getOper();
		switch (oper) {
		case "add":
			statementService.editRival(r);
			break;
		case "edit":
			statementService.editRival(r);
			break;
		case "del":
			
			break;
			
		default:
			break;
		}
		return R.ok();
	}
	@RequestMapping(value="contract.do")//合同毛利率列表
	public ModelAndView queryContractList(HttpServletResponse response,HttpServletRequest request){
		ModelAndView model=new ModelAndView("jsp/smartadmin/statement/contract.jsp");
		List<Map> list=new ArrayList<Map>();
		list=statementService.queryContractListMsg();
		JSONArray jsonArray=JSONArray.fromObject(list);
		model.addObject("jsonArray", jsonArray);
		return model;
	}
	
	@RequestMapping(value="editContract.do")//合同增删改
	public R editContract(HttpServletResponse response,HttpServletRequest request,Contract c){
		String oper=c.getOper();
		switch (oper) {
		case "add":
			statementService.editContract(c);
			break;
		case "edit":
			statementService.editContract(c);
			break;
		case "del":
			
			break;
			
		default:
			break;
		}
		return R.ok();
	}
	
	@RequestMapping(value="getProjectList.do")//项目列表信息
	public R getProjectList(HttpServletResponse response,HttpServletRequest request){
		List<ProjectBase> list=new ArrayList<ProjectBase>();
		Map<String,Object> map=new HashMap<String,Object>();
		list=statementService.queryProjectForContract(null);
		JSONArray jsonArray=JSONArray.fromObject(list);
		map.put("jsonArray", jsonArray);
		return R.ok(map);
	}
	
	@RequestMapping(value="queryContractMsg.do")//选择项目列表对应的基本信息
	public R queryContractMsg(HttpServletResponse response,HttpServletRequest request){
		List<ProjectBase> list=new ArrayList<ProjectBase>();
		Map<String,Object> map=new HashMap<String,Object>();
		Map<String,Object> mapp=new HashMap<String,Object>();
		String pCode=request.getParameter("param");
		mapp.put("pCode", pCode);
		list=statementService.queryProjectForContract(mapp);
		JSONArray jsonArray=JSONArray.fromObject(list);
		map.put("jsonArray", jsonArray);
		return R.ok(map);
	}
	
	@RequestMapping(value="returnMoney.do")//回款列表
	public ModelAndView queryReturnMoney(HttpServletResponse response,HttpServletRequest request){
		ModelAndView model=new ModelAndView("jsp/smartadmin/statement/returnMoney.jsp");
		List<Map> list=new ArrayList<Map>();
		list=statementService.queryReturnMoneyMsg();
		JSONArray jsonArray=JSONArray.fromObject(list);
		model.addObject("jsonArray", jsonArray);
		return model;
	}
	
	@RequestMapping(value="editReturnMoney.do")//回款增改
	public R editReturnMoney(HttpServletResponse response,HttpServletRequest request,ReturnMoney r){
		String oper=r.getOper();
		switch (oper) {
		case "add":
			statementService.editReturnMoney(r);
			break;
		case "edit":
			statementService.editReturnMoney(r);
			break;
		case "del":
			
			break;
			
		default:
			break;
		}
		return R.ok();
	}
	
	@RequestMapping(value="getContractList.do")//项目列表信息
	public R getContractList(HttpServletResponse response,HttpServletRequest request){
		List<Map> list=new ArrayList<Map>();
		Map<String,Object> map=new HashMap<String,Object>();
		list=statementService.queryContractForReturnMoney(null);
		JSONArray jsonArray=JSONArray.fromObject(list);
		map.put("jsonArray", jsonArray);
		return R.ok(map);
	}
	
	@RequestMapping(value="queryReturnMoneyMsg.do")//选择项目列表对应的基本信息
	public R queryReturnMoneyMsg(HttpServletResponse response,HttpServletRequest request){
		List<Map> list=new ArrayList<Map>();
		Map<String,Object> map=new HashMap<String,Object>();
		Map<String,Object> mapp=new HashMap<String,Object>();
		String cCode=request.getParameter("param");
		mapp.put("cCode", cCode);
		list=statementService.queryContractForReturnMoney(mapp);
		JSONArray jsonArray=JSONArray.fromObject(list);
		map.put("jsonArray", jsonArray);
		return R.ok(map);
	}
}
