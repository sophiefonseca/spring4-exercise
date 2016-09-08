package com.ideyatech.springexercise.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ideyatech.springexercise.entity.User;

@Controller
public class LoginController {
	
	@ModelAttribute(name = "user")
	public User initialUser() {
		return new User();
	}
	
	@RequestMapping(value="/")
	public String showLogin() {
		return "login";
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String submitForm(@ModelAttribute User user, ModelMap map) {
	
		String page = "";
		map.addAttribute("email", user.getEmail());
		map.addAttribute("password", user.getPassword());
		
		if(user.getEmail().equals("admin@gmail.com") && user.getPassword().equals("123")) {
			page = "add-user";
		} else {
			page = "home";
		}
		
		return "redirect:/" + page;
	}
}