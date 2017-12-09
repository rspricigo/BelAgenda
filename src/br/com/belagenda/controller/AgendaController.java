package br.com.belagenda.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AgendaController {

	@RequestMapping("/Agenda")
	public String execute() {
		return "/Agenda/Agenda";
	}
	
}
