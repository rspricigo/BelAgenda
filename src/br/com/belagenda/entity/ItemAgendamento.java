package br.com.belagenda.entity;

public class ItemAgendamento {

	private int idItemAgendamento;
	
	private Agendamento idAgendamento;
	
	private Servico idServico;

	public int getIdItemAgendamento() {
		return idItemAgendamento;
	}

	public void setIdItemAgendamento(int idItemAgendamento) {
		this.idItemAgendamento = idItemAgendamento;
	}

	public Agendamento getIdAgendamento() {
		return idAgendamento;
	}

	public void setIdAgendamento(Agendamento idAgendamento) {
		this.idAgendamento = idAgendamento;
	}

	public Servico getIdServico() {
		return idServico;
	}

	public void setIdServico(Servico idServico) {
		this.idServico = idServico;
	}
	
	
}
