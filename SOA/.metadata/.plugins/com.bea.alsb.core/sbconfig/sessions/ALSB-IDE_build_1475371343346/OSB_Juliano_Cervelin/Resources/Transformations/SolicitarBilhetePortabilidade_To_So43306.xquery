<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$solicitarBilhetePortabilidade1" element="ns0:SolicitarBilhetePortabilidade" location="../Legacy/Schemas/ParametrosAPT.xsd" ::)
(:: pragma bea:global-element-parameter parameter="$solicitarBilhetePortabilidadeResponse1" element="ns0:SolicitarBilhetePortabilidadeResponse" location="../Legacy/Schemas/ParametrosAPT.xsd" ::)
(:: pragma bea:global-element-return element="ns0:portabilidadeNumerica" location="../EBS/xsd/ParametrosSolicitacaoPortabilidade.xsd" ::)

declare namespace ns1 = "http://acme.com.br/MC/JulianoCervelin";
declare namespace ns0 = "http://acme.com.br/SN/APTService/JulianoCervelin";
declare namespace xf = "http://tempuri.org/OSB_Juliano_Cervelin/Resources/Transformations/SolicitarBilhetePortabilidade_To_SolicitarPortabilidadeNumerica/";

declare function xf:SolicitarBilhetePortabilidade_To_SolicitarPortabilidadeNumerica($solicitarBilhetePortabilidade1 as element(ns0:SolicitarBilhetePortabilidade),
    $solicitarBilhetePortabilidadeResponse1 as element(ns0:SolicitarBilhetePortabilidadeResponse))
    as element(ns0:portabilidadeNumerica) {
        <ns0:portabilidadeNumerica>
            <ns0:customer>{ $solicitarBilhetePortabilidade1/ns0:customer/@* , $solicitarBilhetePortabilidade1/ns0:customer/node() }</ns0:customer>
            <ns0:account>{ $solicitarBilhetePortabilidade1/ns0:account/@* , $solicitarBilhetePortabilidade1/ns0:account/node() }</ns0:account>
            <ns0:portabilidade>{ $solicitarBilhetePortabilidadeResponse1/ns0:portabilidade/@* , $solicitarBilhetePortabilidadeResponse1/ns0:portabilidade/node() }</ns0:portabilidade>
        </ns0:portabilidadeNumerica>
};

declare variable $solicitarBilhetePortabilidade1 as element(ns0:SolicitarBilhetePortabilidade) external;
declare variable $solicitarBilhetePortabilidadeResponse1 as element(ns0:SolicitarBilhetePortabilidadeResponse) external;

xf:SolicitarBilhetePortabilidade_To_SolicitarPortabilidadeNumerica($solicitarBilhetePortabilidade1,
    $solicitarBilhetePortabilidadeResponse1)]]></con:xquery>
    <con:dependency location="../Legacy/Schemas/ParametrosAPT.xsd">
        <con:schema ref="OSB_Juliano_Cervelin/Resources/Legacy/Schemas/ParametrosAPT"/>
    </con:dependency>
    <con:dependency location="../EBS/xsd/ParametrosSolicitacaoPortabilidade.xsd">
        <con:schema ref="OSB_Juliano_Cervelin/Resources/EBS/xsd/ParametrosSolicitacaoPortabilidade"/>
    </con:dependency>
</con:xqueryEntry>