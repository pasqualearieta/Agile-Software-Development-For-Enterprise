package it.unical.asde2018.components.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import it.unical.asde2018.components.services.NumberService;

@Controller
public class NumberController {

	@Autowired
	private NumberService service;
	
	@GetMapping("/")
	public String goToHome(Model model) {
		model.addAttribute("number", service.getNumber());
		return "home";
	}
	
	@PostMapping("/")
	public String goToHome(@RequestParam int inputNumber, Model model) {
		service.checkNumber(inputNumber);	
		model.addAttribute("number", service.getNumber());
		return "home";
	}
	
	@PostMapping(path="/", params="RestartAll")
	public String prova(Model model) {
		service.reset();
		model.addAttribute("number", service.getNumber());
		return "home";
		
	}
	
	
	
	
}
