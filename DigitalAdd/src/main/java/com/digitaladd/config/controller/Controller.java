package com.digitaladd.controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@org.springframework.stereotype.Controller
@RequestMapping("/")
public class Controller {

	
	@RequestMapping(value = { "/"}, method = RequestMethod.GET)
    public String homePage(ModelMap model) {
        return "welcome";
    }
	@RequestMapping(value = { "/regs"}, method = RequestMethod.GET)
    public String homePage1(ModelMap model) {
        return "welcome";
    }
	

}
