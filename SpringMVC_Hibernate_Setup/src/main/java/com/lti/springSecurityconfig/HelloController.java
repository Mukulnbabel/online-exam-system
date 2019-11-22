package com.lti.springSecurityconfig;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {
	@RequestMapping("/hello")
	public ModelAndView hello()
	{
		String welcomeMessage="Hello controller Welcome Message";
		return new ModelAndView("hello","welcomeMessage",welcomeMessage);
	}
	@RequestMapping("/admin")
	public ModelAndView admin()
	{
		String welcomeMessage="Welcome to Admin Page!!";
		return new ModelAndView("admin","welcomeMessage",welcomeMessage);
	}
	

}
