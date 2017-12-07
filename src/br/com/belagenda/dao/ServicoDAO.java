package br.com.belagenda.dao;

import br.com.belagenda.entity.Servico;

public class ServicoDAO extends GenericDAO<Servico, Integer> {
	
	public ServicoDAO() {
		super(Servico.class);
	}

}
