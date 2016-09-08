package com.ideyatech.springexercise.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ideyatech.springexercise.entity.User;

@Controller
public class AddUserController {

	@ModelAttribute(name = "user")
	public User initialUser() {
		return new User();
	}
	
	@RequestMapping(value="/add-user")
	public String showAddUser() {
		return "add-user";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		// register CustomerDateEditor to convert Data.class to specified format
		binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
	}
	
	@RequestMapping(value="/add-user", method = RequestMethod.POST)
	public String submitForm(@ModelAttribute User user, ModelMap map) {
		
		return "redirect:/add-user";
	}
}
