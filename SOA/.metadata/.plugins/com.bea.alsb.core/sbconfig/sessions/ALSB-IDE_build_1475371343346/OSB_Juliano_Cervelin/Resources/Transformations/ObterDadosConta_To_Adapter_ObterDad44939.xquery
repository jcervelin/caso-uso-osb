<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery>(:: pragma bea:global-element-parameter parameter="$obterDadosConta1" element="ns2:ObterDadosConta" location="../Legacy/Schemas/ParametrosKGB.xsd" ::)
(:: pragma bea:global-element-return element="ns0:obterDadosContaInput" location="../Adapters/AdapterDBCobol/xsd/obterDadosConta.xsd" ::)

declare namespace ns2 = "http://acme.com.br/SN/KGBService/JulianoCervelin";
declare namespace ns1 = "http://acme.com.br/MC/JulianoCervelin";
declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/obterDadosConta";
declare namespace xf = "http://tempuri.org/OSB_Juliano_Cervelin/Resources/Transformations/ObterDadosConta_To_Adapter_ObterDadosConta/";

declare function xf:ObterDadosConta_To_Adapter_ObterDadosConta($obterDadosConta1 as element(ns2:ObterDadosConta))
    as element(ns0:obterDadosContaInput) {
        &lt;ns0:obterDadosContaInput>
            &lt;ns0:id_customer>{ xs:decimal($obterDadosConta1/ns2:customer/ns1:id) }&lt;/ns0:id_customer>
        &lt;/ns0:obterDadosContaInput>
};

declare variable $obterDadosConta1 as element(ns2:ObterDadosConta) external;

xf:ObterDadosConta_To_Adapter_ObterDadosConta($obterDadosConta1)</con:xquery>
    <con:dependency location="../Legacy/Schemas/ParametrosKGB.xsd">
        <con:schema ref="OSB_Juliano_Cervelin/Resources/Legacy/Schemas/ParametrosKGB"/>
    </con:dependency>
    <con:dependency location="../Adapters/AdapterDBCobol/xsd/obterDadosConta.xsd">
        <con:schema ref="OSB_Juliano_Cervelin/Resources/Adapters/AdapterDBCobol/xsd/obterDadosConta"/>
    </con:dependency>
</con:xqueryEntry>