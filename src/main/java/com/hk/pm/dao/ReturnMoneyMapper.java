package com.hk.pm.dao;

import java.util.List;
import java.util.Map;

import com.hk.pm.entity.ReturnMoney;

public interface ReturnMoneyMapper {
    /**
     *
     * @mbggenerated 2018-05-24
     */
    int deleteByPrimaryKey(Long id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insert(ReturnMoney record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insertSelective(ReturnMoney record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    ReturnMoney selectByPrimaryKey(Long id);
    
    List<Map> selectReturnMoneyMsg();//汇款信息列表
    
    List<Map> selectContractForReturnMoney(Map map);//回款项目中的合同下拉列表

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKeySelective(ReturnMoney record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKey(ReturnMoney record);
}