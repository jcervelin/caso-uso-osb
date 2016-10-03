<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$getCustomerByCPFResponse1" element="ns1:GetCustomerByCPFResponse" location="../Legacy/Schemas/ParametrosYUM.xsd" ::)
(:: pragma bea:global-element-return element="ns2:ObterDadosConta" location="../Legacy/Schemas/ParametrosKGB.xsd" ::)

declare namespace ns2 = "http://acme.com.br/SN/KGBService/JulianoCervelin";
declare namespace ns1 = "http://acme.com.br/SN/YUMService/JulianoCervelin";
declare namespace ns0 = "http://acme.com.br/MC/JulianoCervelin";
declare namespace xf = "http://tempuri.org/OSB_Juliano_Cervelin/Resources/Transformations/GetCustomerByCPFResponse_To_ObterDadosConta/";

declare function xf:GetCustomerByCPFResponse_To_ObterDadosConta($getCustomerByCPFResponse1 as element(ns1:GetCustomerByCPFResponse))
    as element(ns2:ObterDadosConta) {
        <ns2:ObterDadosConta>
            <ns2:customer>
                <ns0:id>{ data($getCustomerByCPFResponse1/ns1:customer/ns0:id) }</ns0:id>
                <ns0:nome>{ data($getCustomerByCPFResponse1/ns1:customer/ns0:nome) }</ns0:nome>
                <ns0:dataNascimento>{ data($getCustomerByCPFResponse1/ns1:customer/ns0:dataNascimento) }</ns0:dataNascimento>
                <ns0:cpf>{ data($getCustomerByCPFResponse1/ns1:customer/ns0:cpf) }</ns0:cpf>
                <ns0:telefone>{ data($getCustomerByCPFResponse1/ns1:customer/ns0:telefone) }</ns0:telefone>
                <ns0:statusFinanceiro>S</ns0:statusFinanceiro>
            </ns2:customer>
        </ns2:ObterDadosConta>
};

declare variable $getCustomerByCPFResponse1 as element(ns1:GetCustomerByCPFResponse) external;

xf:GetCustomerByCPFResponse_To_ObterDadosConta($getCustomerByCPFResponse1)]]></con:xquery>
    <con:dependency location="../Legacy/Schemas/ParametrosYUM.xsd">
        <con:schema ref="OSB_Juliano_Cervelin/Resources/Legacy/Schemas/ParametrosYUM"/>
    </con:dependency>
    <con:dependency location="../Legacy/Schemas/ParametrosKGB.xsd">
        <con:schema ref="OSB_Juliano_Cervelin/Resources/Legacy/Schemas/ParametrosKGB"/>
    </con:dependency>
</con:xqueryEntry>