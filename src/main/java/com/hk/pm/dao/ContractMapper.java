package com.hk.pm.dao;

import java.util.List;
import java.util.Map;

import com.hk.pm.entity.Contract;

public interface ContractMapper {
    /**
     *
     * @mbggenerated 2018-05-24
     */
    int deleteByPrimaryKey(Long id);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insert(Contract record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int insertSelective(Contract record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    Contract selectByPrimaryKey(Long id);
    
    List<Map> selectContractListMsg();//合同毛利率列表

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKeySelective(Contract record);

    /**
     *
     * @mbggenerated 2018-05-24
     */
    int updateByPrimaryKey(Contract record);
}