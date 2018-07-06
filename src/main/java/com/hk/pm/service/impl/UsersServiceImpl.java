package com.hk.pm.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.pm.dao.UsersMapper;
import com.hk.pm.entity.Users;
import com.hk.pm.service.UsersService;
@Service
public class UsersServiceImpl implements UsersService{
	@Autowired
	UsersMapper usersMapper;
	@Override
	public Users login(Map map) {
		Users users=new Users();
		users=usersMapper.login(map);
		return users;
	}
	@Override
	public Users selectUsers(Integer id) {
		// TODO Auto-generated method stub
		return usersMapper.selectByPrimaryKey(id);
	}

}
