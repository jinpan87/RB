package com.hk.pm.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.pm.dao.CityMapper;
import com.hk.pm.dao.CountyMapper;
import com.hk.pm.dao.ProjectBaseMapper;
import com.hk.pm.dao.RecordMapper;
import com.hk.pm.dao.TypeMapper;
import com.hk.pm.entity.City;
import com.hk.pm.entity.County;
import com.hk.pm.entity.ProjectBase;
import com.hk.pm.entity.Record;
import com.hk.pm.service.DailyService;
import com.hk.pm.util.ReadConfig;

@Service
public class DailyServiceImpl implements DailyService {
	@Autowired
	ProjectBaseMapper projectBaseDao;
	@Autowired
	CityMapper cityDao;
	@Autowired
	CountyMapper countyDao;
	@Autowired
	RecordMapper recordDao;
	@Autowired
	TypeMapper typeDao;

	@Override
	public Map<String, Object> getDailyMessage(Map map) {
		Map<String, Object> mapp = new HashMap<String, Object>();
		List<City> cityList = new ArrayList<City>();
		List<ProjectBase> projectList = new ArrayList<ProjectBase>();
		List<County> countyList = new ArrayList<County>();
		List<String> stageList = new ArrayList<String>();
		cityList = cityDao.selectCityList();
		countyList = countyDao.selectByCityId(cityList.get(0).getId());
		if (map.containsKey("cityId")) {
			String cityId=Optional.ofNullable(map.get("cityId"))
					.map(String->(map.get("cityId")+""))
					.orElse("1");
			countyList = countyDao.selectByCityId(Integer.valueOf(cityId));
		}
		projectList = projectBaseDao.selectProjectList(map);
		mapp.put("projectList", projectList);
		mapp.put("cityList", cityList);

		// 不同类型的项目获得不同项目阶段列表
		int id = Integer.valueOf(map.get("pType") + "");
		switch (id) {
		case 1:
			String xs = ReadConfig.readByUTF8("XS");
			String[] xsArray = xs.split("→");
			stageList = Arrays.asList(xsArray);
			break;
		case 2:
			String tz = ReadConfig.readByUTF8("TZ");
			String[] tzArray = tz.split("→");
			stageList = Arrays.asList(tzArray);
			break;
		case 3:
			String hk = ReadConfig.readByUTF8("HK");
			String[] hkArray = hk.split("→");
			stageList = Arrays.asList(hkArray);
			break;
		case 4:
			String wh = ReadConfig.readByUTF8("WH");
			String[] whArray = wh.split("→");
			stageList = Arrays.asList(whArray);
			break;

		case 6:
			String zy = ReadConfig.readByUTF8("ZY");
			String[] zyArray = zy.split("→");
			stageList = Arrays.asList(zyArray);
			break;
		case 7:
			String zx = ReadConfig.readByUTF8("ZX");
			String[] zxArray = zx.split("→");
			stageList = Arrays.asList(zxArray);
			break;
		case 8:
			String rc = ReadConfig.readByUTF8("RC");
			String[] rcArray = rc.split("→");
			stageList = Arrays.asList(rcArray);
			break;

		default:
			break;
		}
		mapp.put("stageList", stageList);
		mapp.put("countyList", countyList);
		return mapp;
	}

	@Override
	public List<County> getCountyList(int cityId) {
		// TODO Auto-generated method stub
		List<County> list = new ArrayList<County>();
		list = countyDao.selectByCityId(cityId);
		return list;
	}

	@Override
	public void addRecord(Record record) {
		// TODO Auto-generated method stub
//		recordDao.insertSelective(record);
		//城市id转换为城市名称
		String csmc="";
		csmc= Optional.ofNullable(record)
				.map(r->r.getrCsmc())
				.orElse("null");
		if(csmc.equals("null")){
			recordDao.insertOrUpdateRecord(record);
		}else{
			City city=new City();
			city=cityDao.selectByPrimaryKey(Integer.valueOf(csmc));
			record.setrCsmc(city.getCityname());
			recordDao.insertOrUpdateRecord(record);
		}

	}

	@Override
	public List<Map> queryRecordList(Map map) {
		// TODO Auto-generated method stub
		List<Map> list = new ArrayList<Map>();
		Map mapp = new HashMap();
		mapp.put("state", map.get("state"));
		String roleId = map.get("roleId") + "";
		String rUid=map.get("rUid")+"";
		switch (roleId) {
		case "1":
			list = recordDao.selectRecordList(mapp);
			break;
		case "2":
			mapp.put("roleId", 2);
			mapp.put("rUid", rUid);
			list = recordDao.selectRecordList(mapp);
			mapp.put("roleId", 5);
			mapp.put("rUid", null);
			list.addAll(recordDao.selectRecordList(mapp));
			break;
		case "3":
			mapp.put("roleId", 3);
			mapp.put("rUid", rUid);
			list = recordDao.selectRecordList(mapp);
			mapp.put("roleId", 6);
			mapp.put("rUid", null);
			list.addAll(recordDao.selectRecordList(mapp));
			break;
		case "4":
			list = recordDao.selectRecordList(null);
			break;
		case "5":
			mapp.put("roleId", 5);
			mapp.put("rUid", rUid);
			list = recordDao.selectRecordList(mapp);
			break;
		case "6":
			mapp.put("roleId", 6);
			mapp.put("rUid", rUid);
			list = recordDao.selectRecordList(mapp);
			break;

		default:
			break;
		}
		return list;
	}

	@Override
	public List<Map> queryCheckList(Map map) {
		Map<String,Object> mapp=new HashMap<String,Object>();
		List<Map> list = new ArrayList<Map>();
		// TODO Auto-generated method stub
		String roleId = map.get("roleId") + "";
		switch (roleId) {
		case "1":
			mapp.put("roleId", 1);
			list.addAll(recordDao.selectRecordList(mapp));
			mapp.put("roleId", 2);
			list.addAll(recordDao.selectRecordList(mapp));
			mapp.put("roleId", 3);
			list.addAll(recordDao.selectRecordList(mapp));
			mapp.put("roleId", 4);
			list.addAll(recordDao.selectRecordList(mapp));
			break;
		case "2":
			mapp.put("roleId", 5);
			list.addAll(recordDao.selectRecordList(mapp));
			break;
		case "3":
			mapp.put("roleId", 6);
			list.addAll(recordDao.selectRecordList(mapp));
			break;
		default:
			break;
		}
		return list;
	}

	@Override//更新日报
	public void updateRecord(Record record) {
		// TODO Auto-generated method stub
		recordDao.updateByPrimaryKeySelective(record);
	}

	@Override
	public Map<String, Object> getStatisticProject(Record record) {
		// TODO Auto-generated method stub
		Map<String, Object> mapp = new HashMap<String, Object>();
		List<Map> listByPerson = new ArrayList<Map>();
		List<Map> listMessage = new ArrayList<Map>();
		Map map = new HashMap();
		map = recordDao.selectStatistic(record);
		listByPerson = recordDao.selectStatisticByPerson(record);
		listMessage = recordDao.selectStatisticMessage(record);
		// mapp.put("map", map);
		String gs = "";
		String bxje = "";
		String name = "";
		String zgs = "";
		String zbxje = "";
		for (int i = 0; i < listByPerson.size(); i++) {
			gs += "'" + listByPerson.get(i).get("gs") + "',";
			bxje += "'" + listByPerson.get(i).get("bxje") + "',";
			name += "'" + listByPerson.get(i).get("name") + "',";
		}
		zgs = "'" + map.get("gs") + "'";
		zbxje = "'" + map.get("bxje") + "'";
		mapp.put("gs", gs);
		mapp.put("bxje", bxje);
		mapp.put("name", name);
		mapp.put("zgs", zgs);
		mapp.put("zbxje", zbxje);
		// mapp.put("listByPerson", listByPerson);
		mapp.put("listMessage", listMessage);
		return mapp;
	}

	@Override
	public List<Map> selectByWeek(Map map) {
		// TODO Auto-generated method stub
		List<Map> list = new ArrayList<Map>();
		List<Map> list2 = new ArrayList<Map>();
		try {
			list = recordDao.selectByWeek(map);
			if (list.size() > 0) {
				for (Map map2 : list) {
					Map<String, Object> mapp = new HashMap<String, Object>();
					mapp = recordDao.selectByCode(map2);
					list2.add(mapp);
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list2;
	}

	@Override
	public List<Map> selectByBfsj(Record record) {
		// TODO Auto-generated method stub
		return recordDao.selectByBfsj(record);
	}

	@Override
	public Record queryRecord(int id) {
		// TODO Auto-generated method stub
		return recordDao.selectByPrimaryKey(id);
	}

	@Override
	public Record stringToInt(Record r) {
		// TODO Auto-generated method stub
		String csmc=Optional.ofNullable(r.getrCsmc())
				.map(Record->r.getrCsmc())
				.orElse("1");
		String xmlb=Optional.ofNullable(r.getrXmlb())
				.map(Record->r.getrCsmc())
				.orElse("1");
		//城市名称转换为城市id
		 Pattern pattern = Pattern.compile("^[-\\+]?[\\d]*$");  
	     boolean bool= pattern.matcher(csmc).matches();  
	     boolean bool2= pattern.matcher(xmlb).matches();  
	     Map<String,Object> map=new HashMap<String,Object>();
	     List<Map> listMap=new ArrayList<Map>();
	     City city=new City();
	     if(!bool){
	    	 
	    	 city= cityDao.selectByName(r.getrCsmc());
	    	 r.setrCsmc(city.getId()+"");
	     }else{
	    	 r.setrCsmc(csmc);
	     }
	     if(!bool2){
	    	 map.put("tName", r.getrXmlb());
				listMap=typeDao.selectList(map);
				String id=listMap.get(0).get("id")+"";
				r.setrXmlb(id);
	     }else{
	    	 r.setrXmlb(xmlb);
	     }
	     return r;
	}

	@Override
	public List<Map> queryRecordListByUserId(Map map) {
		// TODO Auto-generated method stub
		
		return recordDao.selectRecordListByUserId(map);
	}


}
