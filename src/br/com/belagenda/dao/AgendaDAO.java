package br.com.belagenda.dao;

import br.com.belagenda.entity.Agenda;

public class AgendaDAO extends GenericDAO<Agenda, Integer> {
	
	public AgendaDAO() {
		super(Agenda.class);
	}

}
