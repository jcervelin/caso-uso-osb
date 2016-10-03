<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery>(:: pragma bea:global-element-parameter parameter="$getCustomerByCPF1" element="ns1:GetCustomerByCPF" location="../Legacy/Schemas/ParametrosYUM.xsd" ::)
(:: pragma bea:global-element-return element="ns0:getCustomerByCpfInput" location="../Adapters/AdapterDBCobol/xsd/getCustomerByCpf.xsd" ::)

declare namespace ns1 = "http://acme.com.br/SN/YUMService/JulianoCervelin";
declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/getCustomerByCpf";
declare namespace xf = "http://tempuri.org/OSB_Juliano_Cervelin/Resources/Transformations/GetCustomerByCpf_to_AdapterDBCobol/";

declare function xf:GetCustomerByCpf_to_AdapterDBCobol($getCustomerByCPF1 as element(ns1:GetCustomerByCPF))
    as element(ns0:getCustomerByCpfInput) {
        &lt;ns0:getCustomerByCpfInput>
            &lt;ns0:cpf>{ data($getCustomerByCPF1/ns1:cpf) }&lt;/ns0:cpf>
        &lt;/ns0:getCustomerByCpfInput>
};

declare variable $getCustomerByCPF1 as element(ns1:GetCustomerByCPF) external;

xf:GetCustomerByCpf_to_AdapterDBCobol($getCustomerByCPF1)</con:xquery>
    <con:dependency location="../Legacy/Schemas/ParametrosYUM.xsd">
        <con:schema ref="OSB_Juliano_Cervelin/Resources/Legacy/Schemas/ParametrosYUM"/>
    </con:dependency>
    <con:dependency location="../Adapters/AdapterDBCobol/xsd/getCustomerByCpf.xsd">
        <con:schema ref="OSB_Juliano_Cervelin/Resources/Adapters/AdapterDBCobol/xsd/getCustomerByCpf"/>
    </con:dependency>
</con:xqueryEntry>