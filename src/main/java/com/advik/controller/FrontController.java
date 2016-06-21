package com.advik.controller;

import java.security.Principal;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.advik.model.User;
import com.advik.service.UserService;



@Controller
public class FrontController {
	
	@Autowired
	private UserService userService;

	@RequestMapping(value={"/","/index"})
	public String getIndex(Locale locale, Model model,Principal principal)
	{
		
		return "index";
	}
	@RequestMapping(value="/editUser")
	public String editUser()
	{
		return "editUser";
	}
	
	@RequestMapping(value = "/allUsers")
	public String allUsersPage(ModelMap model) {
     
		List<User> users=userService.getAllUsers();
	
		model.addAttribute("users", users);
		return "allUsers";
	}
	
	/*@RequestMapping(value="/userProfile")
	public String getUserById(@ModelAttribute("user") User user, Model model){
		Authentication auth=SecurityContextHolder.getContext().getAuthentication();
		 String name=auth.getName();
		 user.setUsername(name);
		 List<User> list=userService.getAllUsers();
		 model.addAttribute("user", list);
		model.addAttribute("user", user);
		return "userProfile";
	}*/
	@RequestMapping(value="/userProfile")
	public String getUserById(ModelMap model,Principal principal){
		String name=principal.getName();
		model.addAttribute("myName", name);
		return "userProfile";
	}
}
