package com.hk.pm.service;

import java.util.Map;

import com.hk.pm.entity.Users;

public interface UsersService {
	Users login(Map map);//登陆验证
	Users selectUsers(Integer id);//
}
