package br.com.acme.inovix.geraticket;
import javax.ejb.Local;

import br.com.acme.inovix.geraticket.bean.Portabilidade;

@Local
public interface GeraTicketLocal {
	
	public Portabilidade gerarTicket(String numeroConta);

}
