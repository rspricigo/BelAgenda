package br.com.belagenda.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ItemAgendamentoController {

	@RequestMapping("/ItemAgendamento")
	public String execute() {
		return "/ItemAgendamento/ItemAgendamento";
	}
	
}
