package com.hk.pm.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.hk.pm.util.R;

@RestController
@RequestMapping("/sys/user")
public class UserController {
	/**
	 * 获取登录的用户信息
	 */
	@RequestMapping("/info.do")
	public R info(){
		return R.ok().put("user", LoginController.users);
	}
}
