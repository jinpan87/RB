package com.hk.pm.service;

import java.util.List;
import java.util.Map;

import com.hk.pm.entity.Client;
import com.hk.pm.entity.Contract;
import com.hk.pm.entity.ProjectBase;
import com.hk.pm.entity.ReturnMoney;
import com.hk.pm.entity.Rival;

public interface StatementService {
	List<Client> queryClientList();//查询客户信息列表
	void editClient(Client client);//增删改客户信息
	
	List<Rival> queryRival();//查询竞争对手列表
	void editRival(Rival r);//增改竞争对手信息
	 
	List<Map> queryContractListMsg();//合同毛利率列表
	void editContract(Contract c);//添加和修改合同
	List<ProjectBase> queryProjectForContract(Map map);//查询项目信息下拉列表
	
	List<Map> queryReturnMoneyMsg();//汇款信息
	void editReturnMoney(ReturnMoney r);//添加修改回款
	List<Map> queryContractForReturnMoney(Map map);//回款项目中的合同列表
}
