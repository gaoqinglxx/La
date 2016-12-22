package com.gxa.controller;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
/**
 * 用户管理控制器
 */
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gxa.model.User;
import com.gxa.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	
	/**
	 * 用户登录
	 * @param request
	 * @param username
	 * @param password
	 * @return
	 */
	@RequestMapping("/login")
	public String login(HttpServletRequest request,String username,String password){
		HttpSession session=request.getSession();
		Map<String, Object> map=new HashMap<>();
		map.put("username", username);
		map.put("password", password);
		User user=userService.getUserArea_id(map);
		if(user==null){
			return "redirect:/login.html";
		}
		session.setAttribute("username", user.getUserealname());
		session.setAttribute("area_id", user.getArea_id());
		return "redirect:/index.jsp";
	}
	/**
	 * 用户注销
	 * @param request
	 * @return
	 */
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request){
		request.getSession().invalidate();
		return "redirect:/login.html";
	}
	
}
