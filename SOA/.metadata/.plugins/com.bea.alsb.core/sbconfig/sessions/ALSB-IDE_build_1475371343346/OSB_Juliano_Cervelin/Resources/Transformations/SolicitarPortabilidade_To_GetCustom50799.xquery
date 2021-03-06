<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery>(:: pragma bea:global-element-parameter parameter="$solicitarPortabilidade1" element="ns0:SolicitarPortabilidade" location="../EBS/xsd/ParametrosINOVIX.xsd" ::)
(:: pragma bea:global-element-return element="ns1:GetCustomerByCPF" location="../Legacy/Schemas/ParametrosYUM.xsd" ::)

declare namespace ns1 = "http://acme.com.br/SN/YUMService/JulianoCervelin";
declare namespace ns0 = "http://acme.com.br/SN/INOVIXService/JulianoCervelin";
declare namespace xf = "http://tempuri.org/OSB_Juliano_Cervelin/Resources/Transformations/SolicitarPortabilidade_To_GetCustomerByCPF/";

declare function xf:SolicitarPortabilidade_To_GetCustomerByCPF($solicitarPortabilidade1 as element(ns0:SolicitarPortabilidade))
    as element(ns1:GetCustomerByCPF) {
        &lt;ns1:GetCustomerByCPF>
            &lt;ns1:cpf>{ data($solicitarPortabilidade1/ns0:cpf) }&lt;/ns1:cpf>
        &lt;/ns1:GetCustomerByCPF>
};

declare variable $solicitarPortabilidade1 as element(ns0:SolicitarPortabilidade) external;

xf:SolicitarPortabilidade_To_GetCustomerByCPF($solicitarPortabilidade1)</con:xquery>
    <con:dependency location="../EBS/xsd/ParametrosINOVIX.xsd">
        <con:schema ref="OSB_Juliano_Cervelin/Resources/EBS/xsd/ParametrosINOVIX"/>
    </con:dependency>
    <con:dependency location="../Legacy/Schemas/ParametrosYUM.xsd">
        <con:schema ref="OSB_Juliano_Cervelin/Resources/Legacy/Schemas/ParametrosYUM"/>
    </con:dependency>
</con:xqueryEntry>