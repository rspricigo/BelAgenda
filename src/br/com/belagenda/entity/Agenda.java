package br.com.belagenda.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import br.com.belagenda.dao.PessoaFisicaDAO;

@Entity
public class Agenda {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idAgenda;
	
	private String nmAgenda;
	
	@ManyToOne
	@JoinColumn(name="idPessoaFisica")
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
