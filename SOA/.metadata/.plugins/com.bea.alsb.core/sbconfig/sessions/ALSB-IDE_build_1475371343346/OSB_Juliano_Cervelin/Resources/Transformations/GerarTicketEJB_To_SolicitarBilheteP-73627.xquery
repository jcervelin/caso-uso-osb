<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$gerarTicketResponse1" element="ns0:gerarTicketResponse" location="../EBS/xsd/ParametrosGerarTicketEJB.xsd" ::)
(:: pragma bea:global-element-return element="ns1:SolicitarBilhetePortabilidadeResponse" location="../Legacy/Schemas/ParametrosAPT.xsd" ::)

declare namespace ns2 = "java:br.com.acme.inovix.geraticket.bean";
declare namespace ns1 = "http://acme.com.br/SN/APTService/JulianoCervelin";
declare namespace ns3 = "http://acme.com.br/MC/JulianoCervelin";
declare namespace ns0 = "br.com.acme.geraticket";
declare namespace xf = "http://tempuri.org/OSB_Juliano_Cervelin/Resources/Transformations/GerarTicketEJB_To_SolicitarBilhetePortabilidadeResponse/";

declare function xf:GerarTicketEJB_To_SolicitarBilhetePortabilidadeResponse($gerarTicketResponse1 as element(ns0:gerarTicketResponse))
    as element(ns1:SolicitarBilhetePortabilidadeResponse) {
        <ns1:SolicitarBilhetePortabilidadeResponse>
            <ns1:portabilidade>
                <ns3:bilhetePortabilidade>{ data($gerarTicketResponse1/ns0:portabilidade/ns2:BilhetePortabilidade) }</ns3:bilhetePortabilidade>
                <ns3:dataHoraJanela>{ data($gerarTicketResponse1/ns0:portabilidade/ns2:DataHoraJanela) }</ns3:dataHoraJanela>
                <ns3:operadoraOrigem>
                    <ns3:nome>{ data($gerarTicketResponse1/ns0:portabilidade/ns2:OperadoraOrigem) }</ns3:nome>
                </ns3:operadoraOrigem>
                <ns3:operadoraDestino>
                    <ns3:nome>{ data($gerarTicketResponse1/ns0:portabilidade/ns2:OperadoraDestino) }</ns3:nome>
                </ns3:operadoraDestino>
            </ns1:portabilidade>
        </ns1:SolicitarBilhetePortabilidadeResponse>
};

declare variable $gerarTicketResponse1 as element(ns0:gerarTicketResponse) external;

xf:GerarTicketEJB_To_SolicitarBilhetePortabilidadeResponse($gerarTicketResponse1)]]></con:xquery>
    <con:dependency location="../EBS/xsd/ParametrosGerarTicketEJB.xsd">
        <con:schema ref="OSB_Juliano_Cervelin/Resources/EBS/xsd/ParametrosGerarTicketEJB"/>
    </con:dependency>
    <con:dependency location="../Legacy/Schemas/ParametrosAPT.xsd">
        <con:schema ref="OSB_Juliano_Cervelin/Resources/Legacy/Schemas/ParametrosAPT"/>
    </con:dependency>
</con:xqueryEntry>