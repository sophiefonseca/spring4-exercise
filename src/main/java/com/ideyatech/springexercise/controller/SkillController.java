package com.ideyatech.springexercise.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ideyatech.springexercise.entity.Skill;

@Controller
public class SkillController {
	
	@ModelAttribute(name = "skill")
	public Skill initSkill() {
		return new Skill();
	}
	
	@RequestMapping(value="/home")
	public String showHome(){
		return "home";
	}
	
	@RequestMapping(value="/home", method = RequestMethod.POST)
	public ModelAndView submitForm(@ModelAttribute Skill skill, ModelMap map) {
		map.addAttribute("skill", skill);
		
		return new ModelAndView("add-skill");
	}
	
}
