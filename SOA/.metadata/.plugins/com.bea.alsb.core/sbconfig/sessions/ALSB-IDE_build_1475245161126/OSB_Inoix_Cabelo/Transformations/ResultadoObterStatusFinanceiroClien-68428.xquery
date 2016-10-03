<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:schema-type-parameter parameter="$resultadoObterStatusFinanceiroCliente1" type="ns1:ResultadoObterStatusFinanceiroCliente" location="../Resources/Legacy/KGB/Schemas/ObterStatusFinanceiroCliente.xsd" ::)
(:: pragma bea:global-element-return element="ns2:ResultadoObterStatusFinanceiroCliente" location="../Resources/Schemas/ResultadoObterStatusFinanceiroCliente.xsd" ::)

declare namespace ns2 = "http://inovix.org";
declare namespace ns1 = "http://kgb.org";
declare namespace ns0 = "http://inovix.org/MC";
declare namespace xf = "http://tempuri.org/OSB_Inoix_Cabelo/Transformations/ResultadoObterStatusFinanceiroCliente_KGB_To_ResultadoObterStatusFinanceiroCliente/";

declare function xf:ResultadoObterStatusFinanceiroCliente_KGB_To_ResultadoObterStatusFinanceiroCliente($resultadoObterStatusFinanceiroCliente1 as element())
    as element(ns2:ResultadoObterStatusFinanceiroCliente) {
        <ns2:ResultadoObterStatusFinanceiroCliente>
            <ns2:cliente>
                {
                    for $statusFinanceiro in $resultadoObterStatusFinanceiroCliente1/ns1:customer/ns1:statusFinanceiro
                    return
                        <ns0:statusFinanceiro>
                            <ns0:debitoAtivo>{ data($statusFinanceiro/ns1:debitoAtivo) }</ns0:debitoAtivo>
                        </ns0:statusFinanceiro>
                }
            </ns2:cliente>
        </ns2:ResultadoObterStatusFinanceiroCliente>
};

declare variable $resultadoObterStatusFinanceiroCliente1 as element() external;

xf:ResultadoObterStatusFinanceiroCliente_KGB_To_ResultadoObterStatusFinanceiroCliente($resultadoObterStatusFinanceiroCliente1)]]></con:xquery>
    <con:dependency location="../Resources/Legacy/KGB/Schemas/ObterStatusFinanceiroCliente.xsd">
        <con:schema ref="OSB_Inoix_Cabelo/Resources/Legacy/KGB/Schemas/ObterStatusFinanceiroCliente"/>
    </con:dependency>
    <con:dependency location="../Resources/Schemas/ResultadoObterStatusFinanceiroCliente.xsd">
        <con:schema ref="OSB_Inoix_Cabelo/Resources/Schemas/ResultadoObterStatusFinanceiroCliente"/>
    </con:dependency>
</con:xqueryEntry>