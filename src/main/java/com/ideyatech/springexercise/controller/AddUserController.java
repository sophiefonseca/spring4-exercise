package com.ideyatech.springexercise.controller;

import java.util.Date;
import java.util.List;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ideyatech.springexercise.entity.User;
import com.ideyatech.springexercise.repository.UserRepository;
import com.ideyatech.springexercise.validator.RegistrationValidator;

@Controller
public class AddUserController {
	
	@Autowired
	private RegistrationValidator registrationValidator;
	
	@Autowired
	private UserRepository userRepository;

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
	
	@RequestMapping(value="/user/{id}")
	public @ResponseBody String getEmployee(@PathVariable("id") Long id){
		return userRepository.findOne(id).toString();
	}
	
	@RequestMapping(value="/user/list")
	public ModelAndView getEmployeeList(ModelMap model){
		List<User> users = userRepository.findAll();
		model.addAttribute("users", users);
		return new ModelAndView("user-list");
	}
	
	@RequestMapping(value="/add-user", method = RequestMethod.POST)
	public String submitForm(@Valid @ModelAttribute User user, 
			BindingResult bindingResult,
			ModelMap map) {
		
		if(bindingResult.hasErrors()) {
			System.out.println("Error");
			return "add-user";
		}
		
		userRepository.save(user);
		return "redirect:/user/list";
	}
}