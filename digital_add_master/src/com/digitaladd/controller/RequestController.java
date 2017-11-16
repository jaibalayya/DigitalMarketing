package com.digitaladd.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.digitaladd.registration.dao.RegistrationDao;
import com.digitaladd.registration.model.User;
import com.digitaladd.util.RandomGenerator;
import com.digitaladd.util.ResourceUtility;

import net.sf.json.JSONObject;


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
	
	@RequestMapping(path= "/getallcountries",method=RequestMethod.GET)
	 public @ResponseBody List<User> getAllCountries(){		
		List<User> countriesList = null;
		try{
			countriesList = RegistrationDao.getInstance().getCountreies();
			
		}catch(Exception e){
			System.out.println("RequestController > getAllCountries() > exception >"+e);
		}		
		 return countriesList; 
	}
	
	@RequestMapping(path= "/getallstates",method=RequestMethod.GET)
	 public @ResponseBody List<User> getAllStates(HttpServletRequest request){		
		List<User> countriesList = null;
		String countryCode = request.getParameter("countryCode");
		try{
			countriesList = RegistrationDao.getInstance().getAllStates(countryCode);
			
		}catch(Exception e){
			System.out.println("RequestController > getAllStates() > exception >"+e);
		}		
		 return countriesList; 
	}
	
	@RequestMapping(path= "/getallcities",method=RequestMethod.GET)
	 public @ResponseBody List<User> getAllCities(HttpServletRequest request){		
		List<User> countriesList = null;
		String stateCode = request.getParameter("stateCode");
		try{
			countriesList = RegistrationDao.getInstance().getAllCities(stateCode);
			
		}catch(Exception e){
			System.out.println("RequestController > getAllCities() > exception >"+e);
		}		
		 return countriesList; 
	}
	
	@RequestMapping(path= "/customer-registration",method=RequestMethod.GET)
	 public @ResponseBody JSONObject customerRegistration(HttpServletRequest request){
		JSONObject json = new JSONObject();
		try{
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String email = request.getParameter("email");
			String mobile = request.getParameter("mobile");
			String password = request.getParameter("password");
			String countries = request.getParameter("countries");
			String states = request.getParameter("states");
			String cities = request.getParameter("cities");
			
			User user = new User();
			user.setFirstName(firstName);
			user.setLastName(lastName);
			user.setEmail(email);
			user.setMobile(mobile);
			user.setPassword(password);
			user.setCountryCode(countries);
			user.setStateCode(states);
			user.setCityCode(cities);
						
			User retUser = RegistrationDao.getInstance().checkUserExistOrNot(user);
			
			if(retUser == null || "".equals(retUser)){
				// create user
				StringBuffer buffer = new StringBuffer(ResourceUtility.getCommonConstant("user.uuid.starts.with"));
				buffer.append(RandomGenerator.generateNumericRandom(Integer.parseInt(ResourceUtility.getCommonConstant("user.uuid.length"))));
				
				user.setUuid(buffer.toString());				
				boolean flag = RegistrationDao.getInstance().customerRegistration(user);
				
				if(flag){
					boolean deleteOtp = RegistrationDao.getInstance().deleteOtp(null, user.getMobile());
					boolean sendOtp = RegistrationDao.getInstance().saveOtp(user.getMobile());
					
					json.put("status", true);
				}else{
					json.put("status", false);
				}	
			}else{
				// user exists
				/*String mobStatus = retUser.getMobileStatus();
				
				if(mobStatus != null && "1".equalsIgnoreCase(mobStatus)){
					returnVal = "mobileEsixts";
				}else{
					returnVal = "mobileNeedToVerify";
				}*/
				json.put("status", "mobileExists");	
			}
		}catch(Exception e){
			System.out.println("RequestController > customerRegistration() > exception >"+e);
		}		
		 return json; 
	}
	
	@RequestMapping(path= "/check-otp",method=RequestMethod.GET)
	 public @ResponseBody JSONObject checkOtp(HttpServletRequest request){
		JSONObject json = new JSONObject();
		try{
			String otp = request.getParameter("otp");
			String mobile = request.getParameter("mobile");
						
			boolean flag = RegistrationDao.getInstance().deleteOtp(otp, mobile);
			
			if(flag){
				boolean statusChange = RegistrationDao.getInstance().changeUserStatus(mobile);
				
				if(statusChange){
					json.put("status", true);
				}else{
					json.put("status", "exception");
				}
			}else{
				json.put("status", false);	
			}
		}catch(Exception e){
			System.out.println("RequestController > customerRegistration() > exception >"+e);
		}		
		 return json; 
	}
	
	@RequestMapping(path= "/resend-otp",method=RequestMethod.GET)
	 public @ResponseBody JSONObject resendOtp(HttpServletRequest request){
		JSONObject json = new JSONObject();
		try{
			String mobile = request.getParameter("mobile");
						
			boolean flag = RegistrationDao.getInstance().deleteOtp(null, mobile);
			
			//if(flag){
				boolean saveOtp = RegistrationDao.getInstance().saveOtp(mobile);
				
				if(saveOtp){
					json.put("status", true);
				}else{
					json.put("status", "exception");
				}
			/*}else{
				json.put("status", false);	
			}*/
		}catch(Exception e){
			System.out.println("RequestController > customerRegistration() > exception >"+e);
			json.put("status", "exception");
		}		
		 return json; 
	}
	
	@RequestMapping(value = { "/login" }, method = RequestMethod.GET)
	public String login(ModelMap model) {		
		return "login.tiles";
	}
	
	@RequestMapping(path= "/check-user-login",method=RequestMethod.GET)
	 public @ResponseBody JSONObject checkUserLogin(HttpServletRequest request){
		JSONObject json = new JSONObject();
		try{
			String userName = request.getParameter("userName");
			String password = request.getParameter("password");
						
			User user = RegistrationDao.getInstance().checkUserLogin(userName, password);
			
			if(user == null){
				json.put("status", false);
			}else{
				if(user.getMobileStatus() != null && user.getMobileStatus().equalsIgnoreCase(ResourceUtility.getCommonConstant("status.active"))){
					json.put("status", true);
					
					HttpSession session = request.getSession();
					
					session.setAttribute("bean", user);
				}else{
					json.put("status", "mobileNeedToVerify");
				}
			}
		}catch(Exception e){
			System.out.println("RequestController > checkUserLogin() > exception >"+e);
			json.put("status", "exception");
		}		
		 return json; 
	}

	/*@RequestMapping(path= "/greet/{name}",method=RequestMethod.GET)
	 public @ResponseBody List<String> foo(HttpServletRequest request,@PathVariable  String name) {
		List<String> list = new ArrayList<String>();
		
		list.add("a");
		list.add("b");
		list.add("c");
		
		
			 return list; 
	}*/
	

}
