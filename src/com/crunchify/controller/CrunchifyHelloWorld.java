package com.crunchify.controller;
 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
 

 
@Controller

public class CrunchifyHelloWorld {
 

	
	@RequestMapping("/ML")
	public ModelAndView ML() {
 

		return new ModelAndView("ML", "null", null );
	}
	
	
	@RequestMapping("/submit")
	public ModelAndView submit() {
 
		return new ModelAndView("submit", "null", null );
	}
	
}