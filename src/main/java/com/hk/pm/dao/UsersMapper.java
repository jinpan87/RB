package com.hk.pm.dao;

import java.util.List;
import java.util.Map;

import com.hk.pm.entity.Users;

public interface UsersMapper {
    /**
     *
     * @mbggenerated 2018-05-24
     */
    int deleteByPrimaryKey(Integer id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insert(Users record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insertSelective(Users record);
    
    Users selectByPrimaryKey(Integer id);

    /**
     *	登陆验证
     * @mbggenerated 2018-05-24
     */
    Users login(Map	map);
    
    List<Users> selectUserList(Map map);//查询用户列表
    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKeySelective(Users record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKey(Users record);
}