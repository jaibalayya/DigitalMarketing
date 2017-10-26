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

import com.digitaladd.registration.dao.RegistrationDao;
import com.digitaladd.registration.model.User;

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
	
	@RequestMapping(path= "/getCountries",method=RequestMethod.GET)
	 public @ResponseBody List<User> getCountries(){
		List<User> countriesList = null;
		try{
			countriesList = RegistrationDao.getInstance().getCountreies();
			
		}catch(Exception e){
			System.out.println("RequestController > getCountries() > exception >"+e);
		}		
		 return countriesList; 
	}

	@RequestMapping(path= "/greet/{name}",method=RequestMethod.GET)
	 public @ResponseBody List<String> foo(HttpServletRequest request,@PathVariable  String name) {
		List<String> list = new ArrayList<String>();
		
		list.add("a");
		list.add("b");
		list.add("c");
		
		
			 return list; 
	}
	

}
