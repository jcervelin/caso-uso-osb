<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$parametrosObterDadosConta1" element="ns2:ParametrosObterDadosConta" location="../Resources/Schemas/ParametrosObterDadosConta.xsd" ::)
(:: pragma bea:global-element-return element="ns1:ParametrosObterDadosConta" location="../Resources/Legacy/KGB/Schemas/ObterDadosConta.xsd" ::)

declare namespace ns2 = "http://inovix.org";
declare namespace ns1 = "http://kgb.org";
declare namespace ns0 = "http://inovix.org/MC";
declare namespace xf = "http://tempuri.org/OSB_Inoix_Cabelo/Transformations/ParametrosObterDadosConta_To_ParametrosObterDadosConta_KGB/";

declare function xf:ParametrosObterDadosConta_To_ParametrosObterDadosConta_KGB($parametrosObterDadosConta1 as element(ns2:ParametrosObterDadosConta))
    as element(ns1:ParametrosObterDadosConta) {
        <ns1:ParametrosObterDadosConta>
            <ns1:customer>
                {
                    for $cpf in $parametrosObterDadosConta1/ns2:cliente/ns0:cpf
                    return
                        <ns1:cpf>{ data($cpf) }</ns1:cpf>
                }
            </ns1:customer>
        </ns1:ParametrosObterDadosConta>
};

declare variable $parametrosObterDadosConta1 as element(ns2:ParametrosObterDadosConta) external;

xf:ParametrosObterDadosConta_To_ParametrosObterDadosConta_KGB($parametrosObterDadosConta1)]]></con:xquery>
    <con:dependency location="../Resources/Schemas/ParametrosObterDadosConta.xsd">
        <con:schema ref="OSB_Inoix_Cabelo/Resources/Schemas/ParametrosObterDadosConta"/>
    </con:dependency>
    <con:dependency location="../Resources/Legacy/KGB/Schemas/ObterDadosConta.xsd">
        <con:schema ref="OSB_Inoix_Cabelo/Resources/Legacy/KGB/Schemas/ObterDadosConta"/>
    </con:dependency>
</con:xqueryEntry>