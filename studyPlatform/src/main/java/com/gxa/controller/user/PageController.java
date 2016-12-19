package com.gxa.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 页面控制器
 * @author mabaoyun
 *
 */
@Controller
public class PageController {

	@RequestMapping("/{page}")
	public String page(@PathVariable String page){
		System.out.println("---------"+page+".jsp");
		return "redirect:/"+page+".jsp";
	}
}
