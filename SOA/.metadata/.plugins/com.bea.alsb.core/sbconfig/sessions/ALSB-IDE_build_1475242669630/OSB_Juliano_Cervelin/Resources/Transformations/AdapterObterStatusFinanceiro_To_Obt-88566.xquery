<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery>(:: pragma bea:global-element-parameter parameter="$obterStatusFinanceiroClienteOutputCollection1" element="ns1:obterStatusFinanceiroClienteOutputCollection" location="../Adapters/AdapterDBCobol/xsd/obterStatusFinanceiroCliente.xsd" ::)
(:: pragma bea:global-element-return element="ns0:ObterStatusFinanceiroClienteResponse" location="../Legacy/Schemas/ParametrosKGB.xsd" ::)

declare namespace ns1 = "http://xmlns.oracle.com/pcbpel/adapter/db/obterStatusFinanceiroCliente";
declare namespace ns0 = "http://acme.com.br/SN/KGBService/JulianoCervelin";
declare namespace xf = "http://tempuri.org/OSB_Juliano_Cervelin/Resources/Transformations/AdapterObterStatusFinanceiro_To_ObterStatusFinanceiro/";

declare function xf:AdapterObterStatusFinanceiro_To_ObterStatusFinanceiro($obterStatusFinanceiroClienteOutputCollection1 as element(ns1:obterStatusFinanceiroClienteOutputCollection))
    as element(ns0:ObterStatusFinanceiroClienteResponse) {
        &lt;ns0:ObterStatusFinanceiroClienteResponse>
            &lt;ns0:statusFinanceiro>{ data($obterStatusFinanceiroClienteOutputCollection1/ns1:obterStatusFinanceiroClienteOutput[1]/ns1:tb_status_financeiro) }&lt;/ns0:statusFinanceiro>
        &lt;/ns0:ObterStatusFinanceiroClienteResponse>
};

declare variable $obterStatusFinanceiroClienteOutputCollection1 as element(ns1:obterStatusFinanceiroClienteOutputCollection) external;

xf:AdapterObterStatusFinanceiro_To_ObterStatusFinanceiro($obterStatusFinanceiroClienteOutputCollection1)</con:xquery>
    <con:dependency location="../Adapters/AdapterDBCobol/xsd/obterStatusFinanceiroCliente.xsd">
        <con:schema ref="OSB_Juliano_Cervelin/Resources/Adapters/AdapterDBCobol/xsd/obterStatusFinanceiroCliente"/>
    </con:dependency>
    <con:dependency location="../Legacy/Schemas/ParametrosKGB.xsd">
        <con:schema ref="OSB_Juliano_Cervelin/Resources/Legacy/Schemas/ParametrosKGB"/>
    </con:dependency>
</con:xqueryEntry>