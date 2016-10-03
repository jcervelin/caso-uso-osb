(:: pragma bea:global-element-parameter parameter="$obterStatusFinanceiroClienteOutputCollection1" element="ns1:obterStatusFinanceiroClienteOutputCollection" location="../Adapters/AdapterDBCobol/xsd/obterStatusFinanceiroCliente.xsd" ::)
(:: pragma bea:global-element-return element="ns0:ObterStatusFinanceiroClienteResponse" location="../Legacy/Schemas/ParametrosKGB.xsd" ::)

declare namespace ns1 = "http://xmlns.oracle.com/pcbpel/adapter/db/obterStatusFinanceiroCliente";
declare namespace ns0 = "http://acme.com.br/SN/KGBService/JulianoCervelin";
declare namespace xf = "http://tempuri.org/OSB_Juliano_Cervelin/Resources/Transformations/AdapterObterStatusFinanceiro_To_ObterStatusFinanceiro/";

declare function xf:AdapterObterStatusFinanceiro_To_ObterStatusFinanceiro($obterStatusFinanceiroClienteOutputCollection1 as element(ns1:obterStatusFinanceiroClienteOutputCollection))
    as element(ns0:ObterStatusFinanceiroClienteResponse) {
        <ns0:ObterStatusFinanceiroClienteResponse>
            <ns0:statusFinanceiro>{ data($obterStatusFinanceiroClienteOutputCollection1/ns1:obterStatusFinanceiroClienteOutput[1]/ns1:tb_status_financeiro) }</ns0:statusFinanceiro>
        </ns0:ObterStatusFinanceiroClienteResponse>
};

declare variable $obterStatusFinanceiroClienteOutputCollection1 as element(ns1:obterStatusFinanceiroClienteOutputCollection) external;

xf:AdapterObterStatusFinanceiro_To_ObterStatusFinanceiro($obterStatusFinanceiroClienteOutputCollection1)
