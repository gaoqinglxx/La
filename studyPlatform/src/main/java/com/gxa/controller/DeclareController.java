package com.gxa.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gxa.model.Project;
import com.gxa.service.DeclareService;

/**
 * 项目申报模块控制器
 * @author mabaoyun
 *
 */
@Controller
@RequestMapping("/declare")
public class DeclareController {
	@Autowired
	private DeclareService declareService;
	
	/**
	 * 通过用户id查询其地区id，再通过地区id和审批状态查询项目申报表
	 * @return
	 */
	@RequestMapping("/getProjectName")
	@ResponseBody
	public List<Map<String, Object>> getProjectByIdStatus(HttpSession session){
				
				int area_id=(int) session.getAttribute("area_id");
				String pro_apply_status="已审批";
				Map<String, Object> map=new HashMap<>();
				map.put("area_id", area_id);
				map.put("pro_apply_status",pro_apply_status);
			    List<Map<String, Object>> list=declareService.getProjectByIdStatus(map);
			    return list;
	}
	/**
	 * 根据项目id，进行查询项目申报表
	 * @return
	 */
	@RequestMapping("/getDeclare/{pro_id}")
	@ResponseBody
	public Project getProjectById(@PathVariable int pro_id){
		Project pro=declareService.getProjectById(pro_id);
		return pro;
	}
}
