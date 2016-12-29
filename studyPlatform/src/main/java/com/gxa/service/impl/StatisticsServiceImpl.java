package com.gxa.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.gxa.dao.StatisticsDao;
import com.gxa.model.DataGridResult;
import com.gxa.model.Statistics;
import com.gxa.service.StatisticsService;

@Service
public class StatisticsServiceImpl implements StatisticsService {

	@Autowired
	private StatisticsDao statDao;
	@Override
	public DataGridResult getStatisticsList(Integer page, Integer rows,Integer area_id,String year) {
		PageHelper.startPage(page, rows);
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("area_id", area_id);
		map.put("year", year);
		List<Map<String,Object>> list_stat=statDao.getStatisticsList(map);
		PageInfo<Map<String,Object>> pageInfo = new PageInfo<>(list_stat);
		DataGridResult statData=new DataGridResult(pageInfo.getTotal(), list_stat);
		return statData;
	}
	
	@Override
	public List<Map<String, Object>> getStatisticsListByType(Integer user_id,Integer type_id,String year) {
		List<Map<String, Object>> statList= new ArrayList<>();
		System.out.println("id="+type_id+",year="+year);
		statList=statDao.getStatisticsListByType(user_id,type_id, year);
		return statList;
	}

	@Override
	public List<Map<String, Object>> getStatisticsListByArea(int area_id, String year) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Statistics getStatisticsById(int stat_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addStatistics(Statistics stat) {
		int msg=statDao.addStatistics(stat);
		return msg;
	}

	@Override
	public int updateStat(Statistics stat) {
		int msg=statDao.updateStat(stat);
		return msg;
	}

	@Override
	public DataGridResult getAllStatisticsList(Integer page, Integer rows, String year) {
		PageHelper.startPage(page, rows);
		List<Map<String,Object>> list_stat=statDao.getAllStatList(year);
		PageInfo<Map<String,Object>> pageInfo = new PageInfo<>(list_stat);
		DataGridResult statData=new DataGridResult(pageInfo.getTotal(), list_stat);
		return statData;
	}

	

}
