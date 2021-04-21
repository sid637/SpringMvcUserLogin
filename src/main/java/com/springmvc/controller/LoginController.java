package com.springmvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.model.Login;
import com.springmvc.model.User;
import com.springmvc.service.UserService;

@Controller
public class LoginController {

  @Autowired
  UserService userService;

  @RequestMapping(path = "/login", method = RequestMethod.GET)
  public String showLogin() {
    
    return "login";
  }

  @RequestMapping(path = "/loginProcess", method = RequestMethod.POST)
  public String loginProcess( @ModelAttribute Login login, Model model){
    

    User user = userService.validateUser(login);
	
    if (null != user) {
    	model.addAttribute("firstname", user.getFirstname());
    	return "success";
     
    } else {
    	model.addAttribute("message", "Username or Password is wrong!!");
    }

    return "login";
  }

}



//@RequestMapping(path="/processform",method = RequestMethod.POST)
//public String handleForm(
//		@RequestParam("email") String userEmail,
//		@RequestParam("username") String userName,
//		@RequestParam("userpassword") String userPassword,
//		Model model) {
//	
//	User user=new User();
//	user.setEmail(userEmail);
//	user.setUserName(userName);
//	user.setPassword(userPassword);
//	System.out.println(user);
//	model.addAttribute("user", user);
//		
////		System.out.println("user email"+userEmail);
////		System.out.println("user name"+userName);
////		System.out.println("user password"+userPassword);
////		
////		model.addAttribute("name", userName);
////		model.addAttribute("email", userEmail);
////		model.addAttribute("password", userPassword);
//
//		
//		
//	return "success";