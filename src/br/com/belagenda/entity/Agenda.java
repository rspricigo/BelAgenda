package br.com.belagenda.entity;

import br.com.belagenda.dao.PessoaFisicaDAO;

public class Agenda {

	private int idAgenda;
	
	private String nmAgenda;
	
	private PessoaFisica idPessoa;
	

	public int getIdAgenda() {
		return idAgenda;
	}

	public void setIdAgenda(int idAgenda) {
		if(idAgenda > 0) {
			this.idAgenda = idAgenda;	
		}
		
	}
	
	public String getNmAgenda() {
		return nmAgenda;
	}

	public void setNmAgenda(String nmAgenda) {
		this.nmAgenda = nmAgenda;
	}

	public PessoaFisica getIdPessoa() {
		return idPessoa;
	}

	public void setIdPessoa(int idPessoa) {
		//this.idPessoa = idPessoa;
		PessoaFisicaDAO dao = new PessoaFisicaDAO();
		this.idPessoa = dao.encontrar(idPessoa);
	}
	
}
