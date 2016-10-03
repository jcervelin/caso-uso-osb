<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$updateCustomer1" element="ns2:UpdateCustomer" location="../Legacy/Schemas/ParametrosYUM.xsd" ::)
(:: pragma bea:global-element-return element="ns0:InputParameters" location="../Adapters/AdapterDBCobol/xsd/updateStatusPortabilidade_sp.xsd" ::)

declare namespace ns2 = "http://acme.com.br/SN/YUMService/JulianoCervelin";
declare namespace ns1 = "http://acme.com.br/MC/JulianoCervelin";
declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/updateStatusPortabilidade";
declare namespace xf = "http://tempuri.org/OSB_Juliano_Cervelin/Resources/Transformations/UpdateCustomer_To_updateStatusPortabilidade/";

declare function xf:UpdateCustomer_To_updateStatusPortabilidade($updateCustomer1 as element(ns2:UpdateCustomer))
    as element(ns0:InputParameters) {
        <ns0:InputParameters>
            <ns0:P_CPF>{ data($updateCustomer1/ns2:customer/ns1:cpf) }</ns0:P_CPF>
            <ns0:P_PORTABILIDADE_STATUS>S</ns0:P_PORTABILIDADE_STATUS>
        </ns0:InputParameters>
};

declare variable $updateCustomer1 as element(ns2:UpdateCustomer) external;

xf:UpdateCustomer_To_updateStatusPortabilidade($updateCustomer1)]]></con:xquery>
    <con:dependency location="../Legacy/Schemas/ParametrosYUM.xsd">
        <con:schema ref="OSB_Juliano_Cervelin/Resources/Legacy/Schemas/ParametrosYUM"/>
    </con:dependency>
    <con:dependency location="../Adapters/AdapterDBCobol/xsd/updateStatusPortabilidade_sp.xsd">
        <con:schema ref="OSB_Juliano_Cervelin/Resources/Adapters/AdapterDBCobol/xsd/updateStatusPortabilidade_sp"/>
    </con:dependency>
</con:xqueryEntry>