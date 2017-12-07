package br.com.belagenda.entity;

import java.sql.Date;

public class PessoaFisica {

	
	private int idPessoaFisica;
	
	private String nmPessoaFisica;
	
	private Date dtNascimento;
	
	private String cpf;
	
	private String rg;
	
	private int celular;
	
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

	public int getCelular() {
		return celular;
	}

	public void setCelular(int celular) {
		this.celular = celular;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
}