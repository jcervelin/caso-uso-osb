(:: pragma bea:global-element-parameter parameter="$obterStatusFinanceiroCliente1" element="ns1:ObterStatusFinanceiroCliente" location="../Legacy/Schemas/ParametrosKGB.xsd" ::)
(:: pragma bea:global-element-return element="ns0:obterStatusFinanceiroClienteInput" location="../Adapters/AdapterDBCobol/xsd/obterStatusFinanceiroCliente.xsd" ::)

declare namespace ns1 = "http://acme.com.br/SN/KGBService/JulianoCervelin";
declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/obterStatusFinanceiroCliente";
declare namespace xf = "http://tempuri.org/OSB_Juliano_Cervelin/Resources/Transformations/ObterStatusFinanceiro_To_AdapterObterStatusFinanceiro/";

declare function xf:ObterStatusFinanceiro_To_AdapterObterStatusFinanceiro($obterStatusFinanceiroCliente1 as element(ns1:ObterStatusFinanceiroCliente))
    as element(ns0:obterStatusFinanceiroClienteInput) {
        <ns0:obterStatusFinanceiroClienteInput>
            <ns0:cpf>{ data($obterStatusFinanceiroCliente1/ns1:cpf) }</ns0:cpf>
        </ns0:obterStatusFinanceiroClienteInput>
};

declare variable $obterStatusFinanceiroCliente1 as element(ns1:ObterStatusFinanceiroCliente) external;

xf:ObterStatusFinanceiro_To_AdapterObterStatusFinanceiro($obterStatusFinanceiroCliente1)
