package br.com.acme.inovix.geraticket.converter;


import br.com.acme.inovix.geraticket.bean.Portabilidade;

import com.bea.wli.sb.transports.ejb.ITypeConverter;

public class PortabilidadeConverter implements ITypeConverter {

	public static Portabilidade convert(Portabilidade portabilidade) {
		return portabilidade;
	}

}