<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$resultadoObterDadosConta1" element="ns1:ResultadoObterDadosConta" location="../Resources/Legacy/KGB/Schemas/ObterDadosConta.xsd" ::)
(:: pragma bea:global-element-return element="ns2:ResultadoObterDadosConta" location="../Resources/Schemas/ResultadoObterDadosConta.xsd" ::)

declare namespace ns2 = "http://inovix.org";
declare namespace ns1 = "http://kgb.org";
declare namespace ns0 = "http://inovix.org/MC";
declare namespace xf = "http://tempuri.org/OSB_Inoix_Cabelo/Transformations/ResultadoObterDadosConta_KGB_To_ResultadoObterDadosConta/";

declare function xf:ResultadoObterDadosConta_KGB_To_ResultadoObterDadosConta($resultadoObterDadosConta1 as element(ns1:ResultadoObterDadosConta))
    as element(ns2:ResultadoObterDadosConta) {
        <ns2:ResultadoObterDadosConta>
            {
                let $account := $resultadoObterDadosConta1/ns1:account
                return
                    <ns2:conta>
                        <ns0:id>{ data($account/ns1:id) }</ns0:id>
                        {
                            for $diaCiclo in $account/ns1:diaCiclo
                            return
                                <ns0:diaCiclo>{ data($diaCiclo) }</ns0:diaCiclo>
                        }
                    </ns2:conta>
            }
        </ns2:ResultadoObterDadosConta>
};

declare variable $resultadoObterDadosConta1 as element(ns1:ResultadoObterDadosConta) external;

xf:ResultadoObterDadosConta_KGB_To_ResultadoObterDadosConta($resultadoObterDadosConta1)]]></con:xquery>
    <con:dependency location="../Resources/Legacy/KGB/Schemas/ObterDadosConta.xsd">
        <con:schema ref="OSB_Inoix_Cabelo/Resources/Legacy/KGB/Schemas/ObterDadosConta"/>
    </con:dependency>
    <con:dependency location="../Resources/Schemas/ResultadoObterDadosConta.xsd">
        <con:schema ref="OSB_Inoix_Cabelo/Resources/Schemas/ResultadoObterDadosConta"/>
    </con:dependency>
</con:xqueryEntry>