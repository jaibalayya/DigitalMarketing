package com.digitaladd.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RequestController {
	/*
	 * @GetMapping("/hello") public String hello(Model model) {
	 * 
	 * model.addAttribute("name", "John Doe");
	 * 
	 * return "welcome"; }
	 * 
	 * 
	 * @RequestMapping(path= "/greet/{name}",method=RequestMethod.GET)
	 * 
	 * @ResponseBody public String foo(HttpServletRequest request, @PathVariable
	 * String name) {
	 * 
	 * return "Response!"+request.getParameter("name"); }
	 */

	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public String test(ModelMap model) {
		model.addAttribute("name", "Melcow");
		return "home";
	}

	@RequestMapping(value = { "/registration" }, method = RequestMethod.GET)
	public String registration(ModelMap model) {
		return "registration.tiles";
	}
	


	@RequestMapping(path= "/greet/{name}",method=RequestMethod.GET)
	 public  @ResponseBody Map<String,String> foo(HttpServletRequest request,@PathVariable  String name) {
		Map<String,String> list = new HashMap<String,String>();
		
		list.put("a","dsfs");
		list.put("b","dzf");
		
		
			 return list; 
			 }
	

}
