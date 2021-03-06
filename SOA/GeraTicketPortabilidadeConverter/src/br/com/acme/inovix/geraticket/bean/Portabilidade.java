package br.com.acme.inovix.geraticket.bean;

import java.io.Serializable;
import java.util.Date;

public class Portabilidade implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -3650127629833294351L;
	
	public Portabilidade(String bilhetePortabilidade, Date dataHoraJanela,
			String operadoraOrigem, String operadoraDestino) {
		super();
		this.bilhetePortabilidade = bilhetePortabilidade;
		this.dataHoraJanela = dataHoraJanela;
		this.operadoraOrigem = operadoraOrigem;
		this.operadoraDestino = operadoraDestino;
	}
	
	private String bilhetePortabilidade;
	private Date dataHoraJanela;
	private String operadoraOrigem;
	private String operadoraDestino;
	
	public String getBilhetePortabilidade() {
		return bilhetePortabilidade;
	}
	public void setBilhetePortabilidade(String bilhetePortabilidade) {
		this.bilhetePortabilidade = bilhetePortabilidade;
	}
	public Date getDataHoraJanela() {
		return dataHoraJanela;
	}
	public void setDataHoraJanela(Date dataHoraJanela) {
		this.dataHoraJanela = dataHoraJanela;
	}
	public String getOperadoraOrigem() {
		return operadoraOrigem;
	}
	public void setOperadoraOrigem(String operadoraOrigem) {
		this.operadoraOrigem = operadoraOrigem;
	}
	public String getOperadoraDestino() {
		return operadoraDestino;
	}
	public void setOperadoraDestino(String operadoraDestino) {
		this.operadoraDestino = operadoraDestino;
	}
}