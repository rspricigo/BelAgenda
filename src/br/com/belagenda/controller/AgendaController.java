package br.com.belagenda.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.belagenda.dao.AgendaDAO;
import br.com.belagenda.dao.PessoaFisicaDAO;
import br.com.belagenda.entity.Agenda;

@Controller
public class AgendaController {

	@RequestMapping("/Agenda")
	public String execute() {
		return "/Agenda/Agenda";
	}
	
	@RequestMapping("adicionaAgenda")
	public ModelAndView adicionaAgenda(Agenda a) {
		AgendaDAO dao = new AgendaDAO();
		System.out.println(a.getNmAgenda());
		dao.save(a);			
		System.out.println(a.getIdAgenda());
		return lista();
	}
	
	
	@RequestMapping("listaAgendas")
	public ModelAndView lista() {
		AgendaDAO dao = new AgendaDAO();
		List<Agenda> agendas = dao.getList();
		ModelAndView mv = new ModelAndView("Agenda/ListaAgenda");
		mv.addObject("agendas",agendas);
	    return mv;
	}
	
}
