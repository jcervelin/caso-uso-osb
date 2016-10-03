<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-return element="ns0:SolicitarBilhetePortabilidadeResponse" location="../Legacy/Schemas/ParametrosAPT.xsd" ::)

declare namespace ns1 = "http://acme.com.br/MC/JulianoCervelin";
declare namespace ns0 = "http://acme.com.br/SN/APTService/JulianoCervelin";
declare namespace xf = "http://tempuri.org/OSB_Juliano_Cervelin/Resources/Transformations/GerarTicketEBJ_To_SolicitarBilhetePortabilidade/";

declare function xf:GerarTicketEBJ_To_SolicitarBilhetePortabilidade($ticket as xs:string)
    as element(ns0:SolicitarBilhetePortabilidadeResponse) {
        <ns0:SolicitarBilhetePortabilidadeResponse>
            <ns0:portabilidade>
                <ns1:bilhetePortabilidade>{ $ticket }</ns1:bilhetePortabilidade>
                <ns1:dataHoraJanela>{current-date()}</ns1:dataHoraJanela>
                <ns1:operadoraOrigem>
                    <ns1:nome>CLARO</ns1:nome>
                </ns1:operadoraOrigem>
                <ns1:operadoraDestino>
                    <ns1:nome>VIVO</ns1:nome>
                </ns1:operadoraDestino>
            </ns0:portabilidade>
        </ns0:SolicitarBilhetePortabilidadeResponse>
};

declare variable $ticket as xs:string external;

xf:GerarTicketEBJ_To_SolicitarBilhetePortabilidade($ticket)]]></con:xquery>
    <con:dependency location="../Legacy/Schemas/ParametrosAPT.xsd">
        <con:schema ref="OSB_Juliano_Cervelin/Resources/Legacy/Schemas/ParametrosAPT"/>
    </con:dependency>
</con:xqueryEntry>