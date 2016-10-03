<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$parametrosCreditLegacy" element="ns0:ParametrosCreditLegacy" location="../../Interfaces/Schemas/CreditLegacy.xsd" ::)
(:: pragma bea:global-element-return element="ns0:ResultadoCreditLegacy" location="../../Interfaces/Schemas/CreditLegacy.xsd" ::)

declare namespace ns0 = "http://creditlegacy.com.br/SN/CreditLegacy";
declare namespace xf = "http://tempuri.org/Mock_Legacy/Resources/Transformations/InputCreditLegacy_To_outputLegacy/";

declare function xf:InputCreditLegacy_To_outputLegacy($parametrosCreditLegacy as element(ns0:ParametrosCreditLegacy))
    as element(ns0:ResultadoCreditLegacy) {
        <ns0:ResultadoCreditLegacy>
            <ns0:cpf>{ data($parametrosCreditLegacy/ns0:cpf) }</ns0:cpf>
            <ns0:restricoes>
                {
                    for $motivo  in $parametrosCreditLegacy/ns0:motivos/ns0:ds_motivo                     
                    return
                    <ns0:restricao>
	                    	<ns0:ds_restricao>{concat('restricao ' , $motivo/text())}</ns0:ds_restricao>
	                    	<ns0:valor>{50}</ns0:valor>
	                </ns0:restricao>
                        
                }
			</ns0:restricoes>
        </ns0:ResultadoCreditLegacy>
};

declare variable $parametrosCreditLegacy as element(ns0:ParametrosCreditLegacy) external;

xf:InputCreditLegacy_To_outputLegacy($parametrosCreditLegacy)]]></con:xquery>
    <con:dependency location="../../Interfaces/Schemas/CreditLegacy.xsd">
        <con:schema ref="Mock_Legacy/Interfaces/Schemas/CreditLegacy"/>
    </con:dependency>
</con:xqueryEntry>