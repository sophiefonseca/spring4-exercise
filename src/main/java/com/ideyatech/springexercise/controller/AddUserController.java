package com.ideyatech.springexercise.controller;

import java.util.Date;
import java.text.SimpleDateFormat;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ideyatech.springexercise.entity.User;
import com.ideyatech.springexercise.validator.RegistrationValidator;

@Controller
public class AddUserController {
	
	@Autowired
	private RegistrationValidator registrationValidator;

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
		binder.addValidators(registrationValidator);
	}
	
	@RequestMapping(value="/add-user", method = RequestMethod.POST)
	public String submitForm(@Valid @ModelAttribute User user, 
			BindingResult bindingResult,
			ModelMap map) {
		
		if(bindingResult.hasErrors()) {
			System.out.println("Error");
			return "add-user";
		}
		
		return "redirect:/add-user";
	}
}
