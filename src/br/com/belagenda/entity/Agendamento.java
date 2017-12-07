package br.com.belagenda.entity;

public class Agendamento {

	private int idAgendamento;
	
	private PessoaFisica idPessoaFisica;
	
	private Agenda idAgenda;

	public int getIdAgendamento() {
		return idAgendamento;
	}

	public void setIdAgendamento(int idAgendamento) {
		this.idAgendamento = idAgendamento;
	}

	public PessoaFisica getIdPessoaFisica() {
		return idPessoaFisica;
	}

	public void setIdPessoaFisica(PessoaFisica idPessoaFisica) {
		this.idPessoaFisica = idPessoaFisica;
	}

	public Agenda getIdAgenda() {
		return idAgenda;
	}

	public void setIdAgenda(Agenda idAgenda) {
		this.idAgenda = idAgenda;
	}
	
}
