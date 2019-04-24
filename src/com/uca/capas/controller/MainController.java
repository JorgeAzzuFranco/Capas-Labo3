package com.uca.capas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.Student;

@Controller
public class MainController {
	@RequestMapping("/")
	public ModelAndView initMain() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main");
		mav.addObject("message", "Bienvenido a MVC");
		
		return mav;
	}
	
	@RequestMapping(value = "/formData", method = RequestMethod.POST)
	public ModelAndView formData(@RequestParam(value = "name") String name, @RequestParam(value = "lname") String lname, 
								@RequestParam(value = "bdate") String bDate, @RequestParam(value = "career") String career,
								@RequestParam(value = "exp") String exp) {
		ModelAndView mav = new ModelAndView();
		Student student = new Student();
		student.setName(name);
		student.setLastName(lname);
		student.setbDate(bDate);
		student.setCareer(career);
		student.setExperience(exp);
		
		mav.setViewName("results");
		mav.addObject(student);
		
		return mav;
	}
	
	@RequestMapping("/json")
	@ResponseBody
	public Student studentF() {
		Student student = new Student("Jorge","Franco","13-11-1996","Info","Exp");
		return student;
	}
	
	
}
