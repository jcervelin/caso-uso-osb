<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$getCustomerByCPFResponse1" element="ns2:GetCustomerByCPFResponse" location="../Legacy/Schemas/ParametrosYUM.xsd" ::)
(:: pragma bea:global-element-parameter parameter="$obterDadosContaResponse1" element="ns3:ObterDadosContaResponse" location="../Legacy/Schemas/ParametrosKGB.xsd" ::)
(:: pragma bea:global-element-return element="ns0:SolicitarBilhetePortabilidade" location="../Legacy/Schemas/ParametrosAPT.xsd" ::)

declare namespace ns2 = "http://acme.com.br/SN/YUMService/JulianoCervelin";
declare namespace ns1 = "http://acme.com.br/MC/JulianoCervelin";
declare namespace ns3 = "http://acme.com.br/SN/KGBService/JulianoCervelin";
declare namespace ns0 = "http://acme.com.br/SN/APTService/JulianoCervelin";
declare namespace xf = "http://tempuri.org/OSB_Juliano_Cervelin/Resources/Transformations/InovixService_To_SolicitarPortabilidade/";

declare function xf:InovixService_To_SolicitarPortabilidade($getCustomerByCPFResponse1 as element(ns2:GetCustomerByCPFResponse),
    $obterDadosContaResponse1 as element(ns3:ObterDadosContaResponse))
    as element(ns0:SolicitarBilhetePortabilidade) {
        <ns0:SolicitarBilhetePortabilidade>
            <ns0:customer>
                <ns1:id>{ data($getCustomerByCPFResponse1/ns2:customer/ns1:id) }</ns1:id>
                <ns1:nome>{ data($getCustomerByCPFResponse1/ns2:customer/ns1:nome) }</ns1:nome>
                <ns1:dataNascimento>{ data($getCustomerByCPFResponse1/ns2:customer/ns1:dataNascimento) }</ns1:dataNascimento>
                <ns1:cpf>{ data($getCustomerByCPFResponse1/ns2:customer/ns1:cpf) }</ns1:cpf>
                <ns1:telefone>{ data($getCustomerByCPFResponse1/ns2:customer/ns1:telefone) }</ns1:telefone>
                <ns1:statusFinanceiro>S</ns1:statusFinanceiro>
            </ns0:customer>
            <ns0:account>
                <ns1:numero_conta>{ data($obterDadosContaResponse1/ns3:account/ns1:numero_conta) }</ns1:numero_conta>
                <ns1:id_customer>{ data($obterDadosContaResponse1/ns3:account/ns1:id_customer) }</ns1:id_customer>
                <ns1:plano>{ data($obterDadosContaResponse1/ns3:account/ns1:plano) }</ns1:plano>
                <ns1:status>{ data($obterDadosContaResponse1/ns3:account/ns1:status) }</ns1:status>
                <ns1:telefone>{ data($obterDadosContaResponse1/ns3:account/ns1:telefone) }</ns1:telefone>
                <ns1:status_portabilidade>{ data($obterDadosContaResponse1/ns3:account/ns1:status_portabilidade) }</ns1:status_portabilidade>
                <ns1:descricao_portabilidade>{ data($obterDadosContaResponse1/ns3:account/ns1:descricao_portabilidade) }</ns1:descricao_portabilidade>
                <ns1:possui_debitos>{ data($obterDadosContaResponse1/ns3:account/ns1:possui_debitos) }</ns1:possui_debitos>
            </ns0:account>
        </ns0:SolicitarBilhetePortabilidade>
};

declare variable $getCustomerByCPFResponse1 as element(ns2:GetCustomerByCPFResponse) external;
declare variable $obterDadosContaResponse1 as element(ns3:ObterDadosContaResponse) external;

xf:InovixService_To_SolicitarPortabilidade($getCustomerByCPFResponse1,
    $obterDadosContaResponse1)]]></con:xquery>
    <con:dependency location="../Legacy/Schemas/ParametrosYUM.xsd">
        <con:schema ref="OSB_Juliano_Cervelin/Resources/Legacy/Schemas/ParametrosYUM"/>
    </con:dependency>
    <con:dependency location="../Legacy/Schemas/ParametrosKGB.xsd">
        <con:schema ref="OSB_Juliano_Cervelin/Resources/Legacy/Schemas/ParametrosKGB"/>
    </con:dependency>
    <con:dependency location="../Legacy/Schemas/ParametrosAPT.xsd">
        <con:schema ref="OSB_Juliano_Cervelin/Resources/Legacy/Schemas/ParametrosAPT"/>
    </con:dependency>
</con:xqueryEntry>