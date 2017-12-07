package br.com.belagenda.dao;

import br.com.belagenda.entity.Agendamento;

public class AgendamentoDAO extends GenericDAO<Agendamento, Integer>{
	
	public AgendamentoDAO() {
		super(Agendamento.class);
	}

}
