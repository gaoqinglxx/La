package com.gxa.service;

import java.util.List;
import java.util.Map;

import com.gxa.model.DataGridResult;
import com.gxa.model.Statistics;

public interface StatisticsService {
	public DataGridResult getStatisticsList(Integer page, Integer rows,Integer area_id,String year);
	
	/**
	 * 根据类型获取效益统计列表(默认当年)
	 * @return
	 */
	public List<Map<String, Object>> getStatisticsListByType(Integer user_id,Integer type_id,String year);
	
	/**
	 * 根据地区获取效益统计列表(默认当年)
	 * @param area_id
	 * @return
	 */
	
	public List<Map<String,Object>> getStatisticsListByArea(int area_id,String year);
	
	/**
	 * 省级用户获取所有信息
	 * @param page
	 * @param rows
	 * @param year
	 * @return
	 */
	public DataGridResult getAllStatisticsList(Integer page, Integer rows,String year);
	/**
	 * 获取效益统计数据
	 * @param stat_id
	 * @return
	 */
	public Statistics getStatisticsById(int stat_id);
	
	/**
	 * 根据项目id添加效益统计信息
	 * @param pro_id
	 * @return
	 */
	public int addStatistics(Statistics stat);
	
	/**
	 * 修改效益统计
	 * @param stat_id
	 * @return
	 */
	public int updateStat(Statistics stat);
}
