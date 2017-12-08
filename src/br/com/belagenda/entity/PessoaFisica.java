package br.com.belagenda.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
@Entity
public class PessoaFisica {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idPessoaFisica;
	
	private String nmPessoaFisica;
	
	private Date dtNascimento;
	
	private String cpf;
	
	private String rg;
	
	private String celular;
	
	private String email;

	public int getIdPessoaFisica() {
		return idPessoaFisica;
	}

	public void setIdPessoaFisica(int idPessoaFisica) {
		this.idPessoaFisica = idPessoaFisica;
	}

	public String getNmPessoaFisica() {
		return nmPessoaFisica;
	}

	public void setNmPessoaFisica(String nmPessoaFisica) {
		this.nmPessoaFisica = nmPessoaFisica;
	}

	public Date getDtNascimento() {
		return dtNascimento;
	}

	public void setDtNascimento(Date dtNascimento) {
		this.dtNascimento = dtNascimento;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getRg() {
		return rg;
	}

	public void setRg(String rg) {
		this.rg = rg;
	}

	public String getCelular() {
		return celular;
	}

	public void setCelular(String celular) {
		this.celular = celular;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
