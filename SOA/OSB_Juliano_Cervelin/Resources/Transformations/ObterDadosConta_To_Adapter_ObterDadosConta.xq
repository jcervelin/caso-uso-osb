(:: pragma bea:global-element-parameter parameter="$obterDadosConta1" element="ns2:ObterDadosConta" location="../Legacy/Schemas/ParametrosKGB.xsd" ::)
(:: pragma bea:global-element-return element="ns0:obterDadosContaInput" location="../Adapters/AdapterDBCobol/xsd/obterDadosConta.xsd" ::)

declare namespace ns2 = "http://acme.com.br/SN/KGBService/JulianoCervelin";
declare namespace ns1 = "http://acme.com.br/MC/JulianoCervelin";
declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/obterDadosConta";
declare namespace xf = "http://tempuri.org/OSB_Juliano_Cervelin/Resources/Transformations/ObterDadosConta_To_Adapter_ObterDadosConta/";

declare function xf:ObterDadosConta_To_Adapter_ObterDadosConta($obterDadosConta1 as element(ns2:ObterDadosConta))
    as element(ns0:obterDadosContaInput) {
        <ns0:obterDadosContaInput>
            <ns0:id_customer>{ xs:decimal($obterDadosConta1/ns2:customer/ns1:id) }</ns0:id_customer>
        </ns0:obterDadosContaInput>
};

declare variable $obterDadosConta1 as element(ns2:ObterDadosConta) external;

xf:ObterDadosConta_To_Adapter_ObterDadosConta($obterDadosConta1)
