package com.gxa.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gxa.model.DataGridResult;
import com.gxa.model.Statistics;
import com.gxa.service.StatisticsService;
import com.gxa.util.DateUtil;


@Controller
@RequestMapping("/stat")
public class StatisticsController {
	
	@Autowired
	private StatisticsService sss;
	
	@RequestMapping("/getStatByType/{type_id}/{year}")
	@ResponseBody
	public List<Map<String,Object>> getStatisticsListByType(@PathVariable Integer type_id,@PathVariable String year){
		List statList=sss.getStatisticsListByType(1,2,year);
		System.out.println(statList.size());
		return null;
	}
	
	@RequestMapping("/getStatList/{year}")
	@ResponseBody
	public DataGridResult getStatList(@RequestParam(defaultValue="1") Integer page, @RequestParam(defaultValue="10") Integer rows,@PathVariable String year,HttpServletRequest request){
		HttpSession session=request.getSession();
		int role_id=(int) session.getAttribute("role_id");
		DataGridResult data=null;
		if(role_id==1){
			 data=sss.getAllStatisticsList(page, rows, year);
		}
		else{
		int area_id=(int) session.getAttribute("area_id");
		 data=sss.getStatisticsList(page, rows,area_id,year);
		}
		return data;
	}
	
	@RequestMapping("/addStat/{pro_id}/{stat_assi_money}/{stat_real_money}/{stat_amount}")
	@ResponseBody
	public int addStat(@PathVariable Integer pro_id,@PathVariable Double stat_assi_money,@PathVariable Double stat_real_money,@PathVariable Integer stat_amount){
		Statistics stat=new Statistics(null, pro_id, stat_assi_money, stat_real_money, stat_amount);
		return sss.addStatistics(stat);
	}
	
	@RequestMapping("/editStat/{stat_id}/{stat_assi_money}/{stat_real_money}/{stat_amount}")
	@ResponseBody
	public int editStat(@PathVariable Integer stat_id,@PathVariable Double stat_assi_money,@PathVariable Double stat_real_money,@PathVariable Integer stat_amount){
		
		Statistics stat=new Statistics(stat_id, null, stat_assi_money, stat_real_money, stat_amount);
		int msg=sss.updateStat(stat);
		System.out.println("msg:"+msg);
		return msg;
	}
}
