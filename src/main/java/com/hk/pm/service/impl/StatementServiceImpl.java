package com.hk.pm.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.pm.dao.ClientMapper;
import com.hk.pm.dao.ContractMapper;
import com.hk.pm.dao.ProjectBaseMapper;
import com.hk.pm.dao.ReturnMoneyMapper;
import com.hk.pm.dao.RivalMapper;
import com.hk.pm.entity.Client;
import com.hk.pm.entity.Contract;
import com.hk.pm.entity.ProjectBase;
import com.hk.pm.entity.ReturnMoney;
import com.hk.pm.entity.Rival;
import com.hk.pm.service.StatementService;

@Service
public class StatementServiceImpl implements StatementService {
	@Autowired
	ClientMapper clientDao;
	@Autowired
	RivalMapper rivalDao;
	@Autowired
	ContractMapper contractDao;
	@Autowired
	ProjectBaseMapper projectDao;
	@Autowired
	ReturnMoneyMapper returnMoneyDao;
	
	@Override
	public List<Client> queryClientList() {
		// TODO Auto-generated method stub
		return clientDao.selectClientList();
	}

	@Override
	public void editClient(Client client) {
		// TODO Auto-generated method stub
		clientDao.insertSelective(client);
	}

	@Override
	public List<Rival> queryRival() {
		// TODO Auto-generated method stub
		return rivalDao.selectRivalListMsg();
	}

	@Override
	public void editRival(Rival r) {
		// TODO Auto-generated method stub
		rivalDao.insertSelective(r);
	}

	@Override
	public List<Map> queryContractListMsg() {
		// TODO Auto-generated method stub
		return contractDao.selectContractListMsg();
	}

	@Override
	public void editContract(Contract c) {
		// TODO Auto-generated method stub
		contractDao.insertSelective(c);
	}

	@Override
	public List<ProjectBase> queryProjectForContract(Map map) {
		// TODO Auto-generated method stub
		return projectDao.selectProjectForContract(map);
	}

	@Override
	public List<Map> queryReturnMoneyMsg() {
		// TODO Auto-generated method stub
		return returnMoneyDao.selectReturnMoneyMsg();
	}

	@Override
	public void editReturnMoney(ReturnMoney r) {
		// TODO Auto-generated method stub
		returnMoneyDao.insertSelective(r);
	}

	@Override
	public List<Map> queryContractForReturnMoney(Map map) {
		// TODO Auto-generated method stub
		return returnMoneyDao.selectContractForReturnMoney(map);
	}

}
