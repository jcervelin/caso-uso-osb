package br.com.acme.inovix.geraticket;
import javax.ejb.Remote;

import br.com.acme.inovix.geraticket.bean.Portabilidade;

@Remote
public interface GeraTicketRemote {
	
	public Portabilidade gerarTicket(String numeroConta);

}
