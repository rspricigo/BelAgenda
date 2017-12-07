package br.com.belagenda.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ServicoController {

	@RequestMapping("/Servico")
	public String execute() {
		return "/Servico/Servico";
	}
	
}
