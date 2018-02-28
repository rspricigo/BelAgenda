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
	
	@RequestMapping("alteraPessoa")
	public ModelAndView alteraPessoa(PessoaFisica pf) {
		
		PessoaFisicaDAO dao = new PessoaFisicaDAO();
		System.out.println(pf.getNmPessoaFisica());
		PessoaFisica p = dao.encontrar(pf.getIdPessoaFisica());
		p = pf;
		dao.update(p);
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
	
	@RequestMapping("editaPessoa")
	public ModelAndView editaPessoa(int id) {
		PessoaFisicaDAO dao = new PessoaFisicaDAO();
		ModelAndView mv = new ModelAndView("Pessoa/Pessoa");
		PessoaFisica pf = dao.encontrar(id);
		mv.addObject("pf",pf);
		System.out.println(pf.getNmPessoaFisica());
		return mv;
		
	}
	
	@RequestMapping("listaPorNome")
	public ModelAndView listaPorNome(String nm_pessoa) {
		PessoaFisicaDAO dao = new PessoaFisicaDAO();
		List<PessoaFisica> pessoas = dao.getListPorNome(nm_pessoa);
		ModelAndView mv = new ModelAndView("Pessoa/ListaPessoaTable");
		mv.addObject("pessoas",pessoas);
	    return mv;
	}
	
	
}
