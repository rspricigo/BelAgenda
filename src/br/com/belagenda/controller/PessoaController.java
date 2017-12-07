package br.com.belagenda.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PessoaController {

	@RequestMapping("/Pessoa")
	public String execute() {
		return "/Pessoa/Pessoa";
	}
	
}
