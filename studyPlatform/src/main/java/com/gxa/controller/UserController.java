package com.gxa.controller;
/**
 * 用户管理控制器
 */
/*package com.gxa.controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

	@RequestMapping("/user/login")
	public String login(HttpServletRequest request,String username,String password){
		HttpSession session=request.getSession();
		session.setAttribute("username", username);
		System.out.println("username==="+username+"------password=="+password);
		return "index";
	}
	@RequestMapping("/user/logout")
	public String logout(HttpServletRequest request){
		request.getSession().invalidate();
		return "redirect:/login.html";
	}
	
}
*/