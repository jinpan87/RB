package com.hk.pm.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.hk.pm.entity.Apply;
import com.hk.pm.service.ApplyService;
import com.hk.pm.util.ExcelUtil;
import com.hk.pm.util.R;

/**
 * 报销业务的操作控制层
 * @author panjin
 *
 */
@RestController
@RequestMapping(value="apply/")
public class ApplyController extends BaseController {
	@Autowired
	ApplyService applyService;
	
	@RequestMapping(value="queryApplyListTop.do")
	public ModelAndView queryApplyListTop(HttpServletResponse response,HttpServletRequest request){
		ModelAndView modelAndView=new ModelAndView("jsp/smartadmin/apply/applyListTop.jsp");
		List<Map> list=new ArrayList<Map>();
		Map<String,Object> map=new HashMap<String,Object>();
		String userId=request.getParameter("userId");
		String roleId=request.getParameter("roleId");
		map.put("userId", userId);
		map.put("roleId", roleId);
		list=applyService.queryApplyListTop(map);
		modelAndView=getModel2(list,modelAndView);
		modelAndView.addObject("userId", userId);
		return modelAndView;
	}
	@RequestMapping(value="queryApplyList.do")
	public ModelAndView queryApplyList(HttpServletResponse response,HttpServletRequest request,Apply apply){
		ModelAndView modelAndView=new ModelAndView("jsp/smartadmin/apply/applyList.jsp");
		List<Map> list=new ArrayList<Map>();
		String userId=Optional.ofNullable(request.getParameter("userId"))
				               .map(String->request.getParameter("userId"))
				               .orElse(apply.getaProposer()+"");
		apply.setaProposer(Integer.valueOf(userId));
		list=applyService.queryApplyList(apply);
		modelAndView=getModel2(list,modelAndView);
		modelAndView.addObject("userId",userId);
		modelAndView.addObject("aState",apply.getaState());
		return modelAndView;
	}
	@RequestMapping(value="downLoadExcel.do")
	public R downLoadExcel(HttpServletResponse response,HttpServletRequest request,Apply apply){
		List<Map> list=new ArrayList<Map>();
		String userId=Optional.ofNullable(request.getParameter("userId"))
				.map(String->request.getParameter("userId"))
				.orElse(apply.getaProposer()+"");
		apply.setaProposer(Integer.valueOf(userId));
		list=applyService.queryApplyList(apply);
		
		ExcelUtil en=new ExcelUtil();
		String fileName="bao_xiao"+userId;
		String[] colName=new String[]{"报销序号","报销名称","开票单位","发票编号","报销金额","发票类型","发票用途","项目名称","申请人","审批人","审批结果","说明",
					"开票时间","申报时间","总金额"};
		String[] index=new String[]{"id","name","invoiceName","invoiceNumber","money","type","invoiceUse",
					"projectName","proposer","approver","state","reason","updateTime","createTime","totalMoney"};
		en.writeToExcel2(list, colName, index, fileName);
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("fileName",fileName);
		return R.ok(map);
	}
	
	@RequestMapping(value="initApply.do")//初始化添加更新页面
	public ModelAndView addApply(HttpServletResponse response,HttpServletRequest request){
		ModelAndView modelAndView=new ModelAndView("jsp/smartadmin/apply/initApply.jsp");
		Map map=new HashMap();
		Apply apply=new Apply();
		int userId=Integer.valueOf(request.getParameter("userId"));
		apply.setaProposer(userId);
		map=applyService.initApply(apply);
		modelAndView.addAllObjects(map);
		return modelAndView;
	}
	
	@RequestMapping(value="refreshApplyByType.do")//根据项目类型刷新页面
	public ModelAndView refreshApplyByType(HttpServletResponse response,HttpServletRequest request,Apply apply){
		ModelAndView modelAndView=new ModelAndView("jsp/smartadmin/apply/initApply.jsp");
		Map<String,Object> map=new HashMap<String,Object>();
		map=applyService.initApply(apply);
		modelAndView.addAllObjects(map);
		return modelAndView;
	}
	@RequestMapping(value="addOrUpdateApply.do")//插入更新报销单
	public ModelAndView addOrUpdateApply(HttpServletResponse response,HttpServletRequest request,Apply apply){
		ModelAndView modelAndView=new ModelAndView("jsp/smartadmin/apply/initApply.jsp");
		
		//更新还原默认值
		apply.setaApprover(null);
		apply.setaReason("");
		apply.setaState(0);
		
		applyService.addOrUpdateApply(apply);
		return modelAndView;
	}
	@RequestMapping(value="updateApply.do")//插入更新报销单
	public ModelAndView updateApply(HttpServletResponse response,HttpServletRequest request){
		ModelAndView modelAndView=new ModelAndView("jsp/smartadmin/apply/initApply.jsp");
		Map map=new HashMap();
		String id=request.getParameter("id");
		map=applyService.queryApply(id);
		modelAndView.addAllObjects(map);
		return modelAndView;
	}
	
	@RequestMapping(value="deleteApply.do")//删除报销
	public R deleteApply(HttpServletResponse response,HttpServletRequest request,Apply apply){
		Map<String,Object> map=new HashMap<String,Object>();
		List<Map> list=new ArrayList<Map>();
		String id=request.getParameter("id");
		applyService.removeApply(id);
		map.put("userId", apply.getaProposer());
		return R.ok(map);
	}
		
	@RequestMapping(value="applyCheckTop.do")
	public ModelAndView applyCheckTop(HttpServletResponse response,HttpServletRequest request){
		ModelAndView modelAndView=new ModelAndView("jsp/smartadmin/apply/applyCheckTop.jsp");
		List<Map> list=new ArrayList<Map>();
		Map<String,Object> map=new HashMap<String,Object>();
		String userId=request.getParameter("userId");
		String roleId=request.getParameter("roleId");
		map.put("userId", userId);
		map.put("roleId", roleId);
		list=applyService.queryCheckApplyTop(map);
		modelAndView=getModel2(list,modelAndView);
		modelAndView.addObject("userId", userId);
		return modelAndView;
	}
	@RequestMapping(value="applyCheck.do")
	public ModelAndView applyCheck(HttpServletResponse response,HttpServletRequest request){
		ModelAndView modelAndView=new ModelAndView("jsp/smartadmin/apply/applyCheck.jsp");
		Apply apply=new Apply();
		List<Map> list=new ArrayList<Map>();
		Map<String,Object> map=new HashMap<String,Object>();
		String userId=request.getParameter("userId");
		int aProposer=Integer.valueOf(request.getParameter("aProposer"));
		apply.setaProposer(aProposer);
		list=applyService.queryCheckApply(apply);
		modelAndView=getModel2(list,modelAndView);
		modelAndView.addObject("userId", userId);
		return modelAndView;
	}
	@RequestMapping(value="checkUpdateApply.do")
	public ModelAndView checkUpdateApply(HttpServletResponse response,HttpServletRequest request,Apply apply){
		ModelAndView modelAndView=new ModelAndView("jsp/smartadmin/apply/checkUpdateApply.jsp");
		modelAndView.addObject("apply", apply);
		return modelAndView;
	}
	@RequestMapping(value="checkedApply.do")
	public ModelAndView checkedApply(HttpServletResponse response,HttpServletRequest request,Apply apply){
		ModelAndView modelAndView=new ModelAndView("jsp/smartadmin/apply/applyCheck.jsp");
		applyService.addOrUpdateApply(apply);
		Apply apply2=new Apply();
		apply2.setaProposer(apply.getaProposer());
		List<Map> list=new ArrayList<Map>();
		list=applyService.queryApplyList(apply2);
		modelAndView=getModel2(list,modelAndView);
		modelAndView.addObject("userId", apply.getaApprover());
		return modelAndView;
	}
}
