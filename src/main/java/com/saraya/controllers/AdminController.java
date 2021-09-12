package com.saraya.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.saraya.model.UserService;

@Controller
public class AdminController {
	@Autowired
	UserService userservice;
	
	@GetMapping(path="/")
	public String showLogin() {
		return "login";
	}
	// go to homepage
	@PostMapping(path="/connect.platform")
	public String showHome(@RequestParam String password, @RequestParam String username, @RequestParam String role) {
		return "home";
	}
	
	// ask creation form
	@GetMapping(path="/create.account")
	public String showCreateAccount() {
		return "create_account";
	}
	// submission of creation form
	@PostMapping(path="/new.account")
	public String showEspace() {
		return "home";
	}
	@GetMapping(path="/updatePage")
	public String updatePage(ModelMap model) {
		model.addAttribute("users", userservice.getUserList());
		return "setpriviledgies";
	}
	@GetMapping(path="/updateEspace")
	public String updateEspace(ModelMap model, @RequestParam String username) {
		model.addAttribute("username", userservice.findUser(username));
		return "setRoleForm";
	}
	
	
	@PostMapping(path="/update")
	public String update(@RequestParam String username, @RequestParam String role) {
		
		userservice.updtaeRole(username, role);
		return "redirect:/updatePage";
	}

}
