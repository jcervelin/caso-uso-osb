<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$parametrosVerificaCreditoExterno" element="ns0:parametrosVerificaCreditoExterno" location="../EBS/xsd/ParametrosCredito.xsd" ::)
(:: pragma bea:global-element-return element="ns2:ParametrosSerasa" location="../Legacy/Schemas/Serasa.xsd" ::)

declare namespace ns2 = "http://serasa.com.br/SN/Serasa";
declare namespace ns1 = "http://sysmap.com.br/MC/CursoSOA/Cabelo";
declare namespace ns0 = "http://sysmap.com.br/SN/Credito";
declare namespace xf = "http://tempuri.org/OSB_BHK/BHK/Resources/Transformations/verificaCreditoExternoToSerasa/";

declare function xf:verificaCreditoExternoToSerasa($parametrosVerificaCreditoExterno as element(ns0:parametrosVerificaCreditoExterno))
    as element(ns2:ParametrosSerasa) {
        <ns2:ParametrosSerasa>
            <ns2:num_documento>{ data($parametrosVerificaCreditoExterno/ns0:pessoa/ns1:cnpj) }</ns2:num_documento>
            <ns2:dt_nascimento>{ data($parametrosVerificaCreditoExterno/ns0:pessoa/ns1:dataNascimento) }</ns2:dt_nascimento>
            <ns2:dt_solicitacao>{ fn:current-date() }</ns2:dt_solicitacao>
        </ns2:ParametrosSerasa>
};

declare variable $parametrosVerificaCreditoExterno as element(ns0:parametrosVerificaCreditoExterno) external;

xf:verificaCreditoExternoToSerasa($parametrosVerificaCreditoExterno)]]></con:xquery>
    <con:dependency location="../EBS/xsd/ParametrosCredito.xsd">
        <con:schema ref="OSB_BHK/BHK/Resources/EBS/xsd/ParametrosCredito"/>
    </con:dependency>
    <con:dependency location="../Legacy/Schemas/Serasa.xsd">
        <con:schema ref="OSB_BHK/BHK/Resources/Legacy/Schemas/Serasa"/>
    </con:dependency>
</con:xqueryEntry>