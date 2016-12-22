package com.gxa.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gxa.model.Progress;
import com.gxa.service.PraticeService;

/**
 * 项目实施模块控制器
 * @author mabaoyun
 *
 */

@Controller
@RequestMapping("/pratice")
public class PraticeController {
	@Autowired
	private PraticeService praticeService;
	
	/**
	 * 添加进度表
	 */
	@RequestMapping("/addTxjd")
	@ResponseBody
	public int addTxjd(int pro_id,int progress_place_status,int progress_ok,double progress_assi_money,double progress_bf_money,double progress_bz,String progress_finish,String progress_remark,String progress_department,String progress_res,String progress_informant){
		Progress pro=new Progress();
		pro.setPro_id(pro_id);
		pro.setProgress_place_status(progress_place_status);
		pro.setProgress_ok(progress_ok);
		pro.setProgress_assi_money(progress_assi_money);
		pro.setProgress_bf_money(progress_bf_money);
		pro.setProgress_bz(progress_bz);
		pro.setProgress_finish(progress_finish);
		pro.setProgress_remark(progress_remark);
		pro.setProgress_department(progress_department);
		pro.setProgress_res(progress_res);
		pro.setProgress_informant(progress_informant);
		return praticeService.addProgress(pro);
	}
	@RequestMapping("/getArea")
	@ResponseBody
	public String getArea(HttpSession session){
		int area_id=(int)session.getAttribute("area_id");
		System.out.println("area_id==="+area_id);
		praticeService.getArea(area_id);
		return "hello";
	}
	
	
	
	/**
	 * 查看项目进度统计表
	 * @return
	 */
	@RequestMapping("/getProgressTable")
	public ModelAndView showProgressTable(){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("showProgressTable");
		mav.addObject("xx", "xx");
		return mav;
	}
	/**
	 * 查看项目进度统计图表
	 * @return
	 */
	@RequestMapping("/getProgressPicture")
	public ModelAndView showProgressPicture(){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("showProgressPicture");
		mav.addObject("xx", "xx");
		return mav;
	}
}
