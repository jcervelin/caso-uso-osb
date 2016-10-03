<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$parametrosVerificaWhiteList" element="ns0:parametrosVerificaWhiteList" location="../EBS/xsd/ParametrosCredito.xsd" ::)
(:: pragma bea:global-element-return element="ns2:ParametrosWhiteList" location="../Legacy/Schemas/InternalWhiteList.xsd" ::)

declare namespace ns2 = "http://whitelist.com.br/SN/WhiteList";
declare namespace ns1 = "http://sysmap.com.br/MC/CursoSOA/Cabelo";
declare namespace ns0 = "http://sysmap.com.br/SN/Credito";
declare namespace xf = "http://tempuri.org/OSB_BHK/BHK/Resources/Transformations/verificaWhiteListToInternalWhiteList/";

declare function xf:verificaWhiteListToInternalWhiteList($parametrosVerificaWhiteList as element(ns0:parametrosVerificaWhiteList))
    as element(ns2:ParametrosWhiteList) {
        <ns2:ParametrosWhiteList>
            <ns2:num_documento>{ data($parametrosVerificaWhiteList/ns0:pessoa/ns1:cnpj) }</ns2:num_documento>
            <ns2:dt_nascimento>{ data($parametrosVerificaWhiteList/ns0:pessoa/ns1:dataNascimento) }</ns2:dt_nascimento>
        </ns2:ParametrosWhiteList>
};

declare variable $parametrosVerificaWhiteList as element(ns0:parametrosVerificaWhiteList) external;

xf:verificaWhiteListToInternalWhiteList($parametrosVerificaWhiteList)]]></con:xquery>
    <con:dependency location="../EBS/xsd/ParametrosCredito.xsd">
        <con:schema ref="OSB_BHK/BHK/Resources/EBS/xsd/ParametrosCredito"/>
    </con:dependency>
    <con:dependency location="../Legacy/Schemas/InternalWhiteList.xsd">
        <con:schema ref="OSB_BHK/BHK/Resources/Legacy/Schemas/InternalWhiteList"/>
    </con:dependency>
</con:xqueryEntry>