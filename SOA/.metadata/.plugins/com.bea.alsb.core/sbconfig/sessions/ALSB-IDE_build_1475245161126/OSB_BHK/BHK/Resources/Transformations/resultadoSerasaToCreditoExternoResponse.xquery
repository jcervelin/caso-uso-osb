<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$resultadoSerasa" element="ns2:ResultadoSerasa" location="../Legacy/Schemas/Serasa.xsd" ::)
(:: pragma bea:global-element-return element="ns0:resultadoVerificaCreditoExterno" location="../EBS/xsd/ParametrosCredito.xsd" ::)

declare namespace ns2 = "http://serasa.com.br/SN/Serasa";
declare namespace ns1 = "http://sysmap.com.br/MC/CursoSOA/Cabelo";
declare namespace ns0 = "http://sysmap.com.br/SN/Credito";
declare namespace xf = "http://tempuri.org/OSB_BHK/BHK/Resources/Transformations/resultadoSerasaToCreditoExternoResponse/";

declare function xf:resultadoSerasaToCreditoExternoResponse($resultadoSerasa as element(ns2:ResultadoSerasa))
    as element(ns0:resultadoVerificaCreditoExterno) {
        <ns0:resultadoVerificaCreditoExterno>
            <ns0:credito>
                <ns1:pessoa>
                    <ns1:cnpj>{ data($resultadoSerasa/ns2:num_documento) }</ns1:cnpj>
                </ns1:pessoa>
            </ns0:credito>
        </ns0:resultadoVerificaCreditoExterno>
};

declare variable $resultadoSerasa as element(ns2:ResultadoSerasa) external;

xf:resultadoSerasaToCreditoExternoResponse($resultadoSerasa)]]></con:xquery>
    <con:dependency location="../Legacy/Schemas/Serasa.xsd">
        <con:schema ref="OSB_BHK/BHK/Resources/Legacy/Schemas/Serasa"/>
    </con:dependency>
    <con:dependency location="../EBS/xsd/ParametrosCredito.xsd">
        <con:schema ref="OSB_BHK/BHK/Resources/EBS/xsd/ParametrosCredito"/>
    </con:dependency>
</con:xqueryEntry>