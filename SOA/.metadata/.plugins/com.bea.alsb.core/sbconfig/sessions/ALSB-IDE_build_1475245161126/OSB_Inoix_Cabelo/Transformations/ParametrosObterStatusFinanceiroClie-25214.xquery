<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery>(:: pragma bea:global-element-parameter parameter="$parametrosObterStatusFinanceiroCliente1" element="ns1:ParametrosObterStatusFinanceiroCliente" location="../Resources/Schemas/ParametrosObterStatusFinanceiroCliente.xsd" ::)
(:: pragma bea:global-element-return element="ns0:ParametrosObterStatusFinanceiroCliente" location="../Resources/Legacy/KGB/Schemas/ObterStatusFinanceiroCliente.xsd" ::)

declare namespace ns1 = "http://inovix.org";
declare namespace ns0 = "http://kgb.org";
declare namespace xf = "http://tempuri.org/OSB_Inoix_Cabelo/Transformations/ParametrosObterStatusFinanceiroCliente_To_ObterStatusFinanceiroCliente_KGB/";

declare function xf:ParametrosObterStatusFinanceiroCliente_To_ObterStatusFinanceiroCliente_KGB($parametrosObterStatusFinanceiroCliente1 as element(ns1:ParametrosObterStatusFinanceiroCliente))
    as element(ns0:ParametrosObterStatusFinanceiroCliente) {
        &lt;ns0:ParametrosObterStatusFinanceiroCliente>
            &lt;ns0:cpf>{ data($parametrosObterStatusFinanceiroCliente1/ns1:cpf) }&lt;/ns0:cpf>
        &lt;/ns0:ParametrosObterStatusFinanceiroCliente>
};

declare variable $parametrosObterStatusFinanceiroCliente1 as element(ns1:ParametrosObterStatusFinanceiroCliente) external;

xf:ParametrosObterStatusFinanceiroCliente_To_ObterStatusFinanceiroCliente_KGB($parametrosObterStatusFinanceiroCliente1)</con:xquery>
    <con:dependency location="../Resources/Schemas/ParametrosObterStatusFinanceiroCliente.xsd">
        <con:schema ref="OSB_Inoix_Cabelo/Resources/Schemas/ParametrosObterStatusFinanceiroCliente"/>
    </con:dependency>
    <con:dependency location="../Resources/Legacy/KGB/Schemas/ObterStatusFinanceiroCliente.xsd">
        <con:schema ref="OSB_Inoix_Cabelo/Resources/Legacy/KGB/Schemas/ObterStatusFinanceiroCliente"/>
    </con:dependency>
</con:xqueryEntry>