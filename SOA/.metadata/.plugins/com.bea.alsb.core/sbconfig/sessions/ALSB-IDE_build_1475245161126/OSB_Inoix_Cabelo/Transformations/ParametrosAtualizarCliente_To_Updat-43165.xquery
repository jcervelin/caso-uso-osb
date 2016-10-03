<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$parametrosAtualizarCliente1" element="ns2:ParametrosAtualizarCliente" location="../Resources/Schemas/ParametrosAtualizarCliente.xsd" ::)
(:: pragma bea:global-element-return element="ns1:ParametrosUpdateCustomer" location="../Resources/Legacy/YUM/Schemas/UpdateCustomer.xsd" ::)

declare namespace ns2 = "http://inovix.org";
declare namespace ns1 = "http://yum.org";
declare namespace ns0 = "http://inovix.org/MC";
declare namespace xf = "http://tempuri.org/OSB_Inoix_Cabelo/Transformations/ParametrosAtualizarCliente_To_UpdateCustomer_YUM/";

declare function xf:ParametrosAtualizarCliente_To_UpdateCustomer_YUM($parametrosAtualizarCliente1 as element(ns2:ParametrosAtualizarCliente))
    as element(ns1:ParametrosUpdateCustomer) {
        <ns1:ParametrosUpdateCustomer>
            <ns1:customer>
                <ns1:cpf>{ data($parametrosAtualizarCliente1/ns2:cliente/ns0:cpf) }</ns1:cpf>
                <ns1:bilhetePortabilidade>{ data($parametrosAtualizarCliente1/ns2:cliente/ns0:bilhetePortabilidade) }</ns1:bilhetePortabilidade>
            </ns1:customer>
        </ns1:ParametrosUpdateCustomer>
};

declare variable $parametrosAtualizarCliente1 as element(ns2:ParametrosAtualizarCliente) external;

xf:ParametrosAtualizarCliente_To_UpdateCustomer_YUM($parametrosAtualizarCliente1)]]></con:xquery>
    <con:dependency location="../Resources/Schemas/ParametrosAtualizarCliente.xsd">
        <con:schema ref="OSB_Inoix_Cabelo/Resources/Schemas/ParametrosAtualizarCliente"/>
    </con:dependency>
    <con:dependency location="../Resources/Legacy/YUM/Schemas/UpdateCustomer.xsd">
        <con:schema ref="OSB_Inoix_Cabelo/Resources/Legacy/YUM/Schemas/UpdateCustomer"/>
    </con:dependency>
</con:xqueryEntry>