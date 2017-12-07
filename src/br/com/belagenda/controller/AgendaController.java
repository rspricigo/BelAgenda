package br.com.belagenda.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AgendaController {

	@RequestMapping("/Agendamento")
	public String execute() {
		return "/Agendamento/Agendamento";
	}
	
}
