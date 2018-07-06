package com.hk.pm.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hk.pm.entity.Users;
import com.hk.pm.service.UsersService;
import com.hk.pm.util.R;
/**
 * 用户登录管理类
 * @author panjin
 *
 */
@Controller
public class LoginController extends BaseController{
	@Autowired
	UsersService usersService;
	 static Users users;
	 
	//登录验证
	
	@RequestMapping(value="loginCheck.do")
	@ResponseBody
	public R loginCheck(HttpServletResponse response,HttpServletRequest request,Users users){
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("username", users.getUname());
		map.put("password", users.getPwd());
		users=usersService.login(map);
		Optional<Users> optional = Optional.ofNullable(users);
		if (!optional.isPresent()){
			return R.error("用户名或密码错误");
		}else{
			map.put("users", optional.get());
			return R.ok(map);
		}
	       
	}
	
	@RequestMapping(value="login.do")
	public ModelAndView login(HttpServletResponse response,HttpServletRequest request,String username,String password){
		Map<String,Object> map=new HashMap<String,Object>();
		ModelAndView model=new ModelAndView();
		Users users=new Users();
		Optional<String> oname = Optional.ofNullable(username);
		Optional<String> pname = Optional.ofNullable(password);
		if(oname.isPresent()&&pname.isPresent()){
			map.put("username", oname.get());
			map.put("password", pname.get());
		}
		users=usersService.login(map);
		if(users==null){
			model.setViewName("jsp/smartadmin/login.jsp");
		}else{
			model.setViewName("jsp/smartadmin/index.jsp");
		}
		model.addObject("users",users);
		return model;
	}
	
	/**
	 * 退出
	 */
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout() {
		return "redirect:login.html";
	}
}
