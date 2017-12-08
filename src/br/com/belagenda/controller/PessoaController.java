package br.com.belagenda.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.belagenda.dao.PessoaFisicaDAO;
import br.com.belagenda.entity.PessoaFisica;

@Controller
public class PessoaController {

	@RequestMapping("/Pessoa")
	public String execute() {
		return "/Pessoa/Pessoa";
	}
	
	@RequestMapping("adicionaPessoa")
	public ModelAndView adicionaPessoa(PessoaFisica pf) {
		
		PessoaFisicaDAO dao = new PessoaFisicaDAO();
		System.out.println(pf.getNmPessoaFisica());
		dao.save(pf);			
		System.out.println(pf.getIdPessoaFisica());
		return lista();
	}
	
	
	@RequestMapping("listaPessoas")
	public ModelAndView lista() {
		PessoaFisicaDAO dao = new PessoaFisicaDAO();
		List<PessoaFisica> pessoas = dao.getList();
		ModelAndView mv = new ModelAndView("Pessoa/ListaPessoa");
		mv.addObject("pessoas",pessoas);
	    return mv;
				
	}
	
	
}
