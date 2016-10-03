<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$obterDadosContaOutputCollection1" element="ns0:obterDadosContaOutputCollection" location="../Adapters/AdapterDBCobol/xsd/obterDadosConta.xsd" ::)
(:: pragma bea:global-element-return element="ns2:ObterDadosContaResponse" location="../Legacy/Schemas/ParametrosKGB.xsd" ::)

declare namespace ns2 = "http://acme.com.br/SN/KGBService/JulianoCervelin";
declare namespace ns1 = "http://acme.com.br/MC/JulianoCervelin";
declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/obterDadosConta";
declare namespace xf = "http://tempuri.org/OSB_Juliano_Cervelin/Resources/Transformations/AdapterObterDadosContaResponse_To_ObterDadosContaResponse/";

declare function xf:AdapterObterDadosContaResponse_To_ObterDadosContaResponse($obterDadosContaOutputCollection1 as element(ns0:obterDadosContaOutputCollection))
    as element(ns2:ObterDadosContaResponse) {
        <ns2:ObterDadosContaResponse>
            <ns2:account>
                <ns1:numero_conta>{ xs:integer($obterDadosContaOutputCollection1/ns0:obterDadosContaOutput[1]/ns0:TB_NU_CONTA) }</ns1:numero_conta>
                <ns1:id_customer>{ xs:integer($obterDadosContaOutputCollection1/ns0:obterDadosContaOutput[1]/ns0:TB_ID_CUSTOMER) }</ns1:id_customer>
                <ns1:plano>{ data($obterDadosContaOutputCollection1/ns0:obterDadosContaOutput[1]/ns0:TB_PLANO) }</ns1:plano>
                <ns1:status>{ data($obterDadosContaOutputCollection1/ns0:obterDadosContaOutput[1]/ns0:TB_STATUS) }</ns1:status>
                <ns1:telefone>{ xs:integer($obterDadosContaOutputCollection1/ns0:obterDadosContaOutput[1]/ns0:TB_TELEFONE) }</ns1:telefone>
                <ns1:status_portabilidade>{ data($obterDadosContaOutputCollection1/ns0:obterDadosContaOutput[1]/ns0:TB_PORTABILIDADE_STATUS) }</ns1:status_portabilidade>
                <ns1:descricao_portabilidade>{ data($obterDadosContaOutputCollection1/ns0:obterDadosContaOutput[1]/ns0:TB_PORTABILIDADE_DESC) }</ns1:descricao_portabilidade>
                { 
                	if ($obterDadosContaOutputCollection1/ns0:obterDadosContaOutput/ns0:TB_POSSUI_DEBITOS = 'S') then
                		<ns1:possui_debitos>true</ns1:possui_debitos>
            		else (<ns1:possui_debitos>false</ns1:possui_debitos>)
        		}
            </ns2:account>
        </ns2:ObterDadosContaResponse>
};

declare variable $obterDadosContaOutputCollection1 as element(ns0:obterDadosContaOutputCollection) external;

xf:AdapterObterDadosContaResponse_To_ObterDadosContaResponse($obterDadosContaOutputCollection1)]]></con:xquery>
    <con:dependency location="../Adapters/AdapterDBCobol/xsd/obterDadosConta.xsd">
        <con:schema ref="OSB_Juliano_Cervelin/Resources/Adapters/AdapterDBCobol/xsd/obterDadosConta"/>
    </con:dependency>
    <con:dependency location="../Legacy/Schemas/ParametrosKGB.xsd">
        <con:schema ref="OSB_Juliano_Cervelin/Resources/Legacy/Schemas/ParametrosKGB"/>
    </con:dependency>
</con:xqueryEntry>