<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$parametrosVerificaCreditoInterno" element="ns0:parametrosVerificaCreditoInterno" location="../EBS/xsd/ParametrosCredito.xsd" ::)
(:: pragma bea:global-element-return element="ns2:ParametrosCreditLegacy" location="../Legacy/Schemas/CreditLegacy.xsd" ::)

declare namespace ns2 = "http://creditlegacy.com.br/SN/CreditLegacy";
declare namespace ns1 = "http://sysmap.com.br/MC/CursoSOA/Cabelo";
declare namespace ns0 = "http://sysmap.com.br/SN/Credito";
declare namespace xf = "http://tempuri.org/OSB_BHK/BHK/Resources/Transformations/verificaCreditoInternoToCreditLegacy/";

declare function xf:verificaCreditoInternoToCreditLegacy($parametrosVerificaCreditoInterno as element(ns0:parametrosVerificaCreditoInterno))
    as element(ns2:ParametrosCreditLegacy) {
        <ns2:ParametrosCreditLegacy>
            <ns2:cpf>{ data($parametrosVerificaCreditoInterno/ns0:pessoa/ns1:cnpj) }</ns2:cpf>
            <ns2:motivos>
            	<ns2:ds_motivo>{data($parametrosVerificaCreditoInterno/ns0:pessoa/ns1:cnpj)}</ns2:ds_motivo>
            </ns2:motivos>
            <ns2:dt_solicitacao>{ fn:current-date() }</ns2:dt_solicitacao>
        </ns2:ParametrosCreditLegacy>
};

declare variable $parametrosVerificaCreditoInterno as element(ns0:parametrosVerificaCreditoInterno) external;

xf:verificaCreditoInternoToCreditLegacy($parametrosVerificaCreditoInterno)]]></con:xquery>
    <con:dependency location="../EBS/xsd/ParametrosCredito.xsd">
        <con:schema ref="OSB_BHK/BHK/Resources/EBS/xsd/ParametrosCredito"/>
    </con:dependency>
    <con:dependency location="../Legacy/Schemas/CreditLegacy.xsd">
        <con:schema ref="OSB_BHK/BHK/Resources/Legacy/Schemas/CreditLegacy"/>
    </con:dependency>
</con:xqueryEntry>