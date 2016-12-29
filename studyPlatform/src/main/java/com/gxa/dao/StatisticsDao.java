package com.gxa.dao;

import java.util.List;
import java.util.Map;

import com.gxa.model.Statistics;

public interface StatisticsDao {
	
	public List<Map<String,Object>> getStatisticsList(Map<String,Object> map);//Map 内为area_id,year
	
	/**
	 * 根据类型获取效益统计列表(默认当年)
	 * @return
	 */
	public List<Map<String,Object>> getStatisticsListByType(int user_id,int type_id,String year);
	
	/**
	 * 根据地区获取效益统计列表(默认当年)
	 * @param area_id 地区id
	 * @return
	 */
	public List<Map<String,Object>> getStatisticsListByArea(int user_id,int area_id,String year);
	
	/**
	 * 省级用户获取所有某年的信息(默认当年)
	 * @param year
	 * @return
	 */
	public List<Map<String,Object>> getAllStatList (String year);
	
	/**
	 * 获取效益统计数据
	 * @param stat_id 统计id
	 * @return
	 */
	public Statistics getStatisticsById(int stat_id);
	
	/**
	 * 根据项目id添加效益统计信息
	 * @param pro_id 项目id
	 * @return
	 */
	public int addStatistics(Statistics stat);
	
	/**
	 * 修改效益统计
	 * @param stat 统计信息
	 * @return
	 */
	public int updateStat(Statistics stat);
	
	/**
	 * 获取地区总stat_assi_money,包含子地区
	 * @param area_id
	 * @return
	 */
	public int getSumStatAssiMoneyByArea(int area_id);
	
}

