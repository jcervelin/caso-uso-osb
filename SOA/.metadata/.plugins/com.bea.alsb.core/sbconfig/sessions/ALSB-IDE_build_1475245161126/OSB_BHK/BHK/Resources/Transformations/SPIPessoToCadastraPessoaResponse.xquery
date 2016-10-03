<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$outputParameters" element="ns2:OutputParameters" location="../Adapter/AdapterSGBD/xsd/SPI_PESSOA_sp.xsd" ::)
(:: pragma bea:global-element-parameter parameter="$parametrosCadastraPessoa" element="ns0:parametrosCadastraPessoa" location="../EBS/xsd/ParametrosPessoa.xsd" ::)
(:: pragma bea:global-element-return element="ns0:resultadoCadastraPessoa" location="../EBS/xsd/ParametrosPessoa.xsd" ::)

declare namespace ns2 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/SPI_PESSOA";
declare namespace ns1 = "http://sysmap.com.br/MC/CursoSOA/Cabelo";
declare namespace ns0 = "http://sysmap.com.br/SN/Pessoa";
declare namespace xf = "http://tempuri.org/OSB_BHK/BHK/Resources/Transformations/SPIPessoToCadastraPessoaResponse/";

declare function xf:SPIPessoToCadastraPessoaResponse($outputParameters as element(ns2:OutputParameters),
    $parametrosCadastraPessoa as element(ns0:parametrosCadastraPessoa))
    as element(ns0:resultadoCadastraPessoa) {
        <ns0:resultadoCadastraPessoa>
            <ns0:pessoa>
                <ns1:id>{ xs:integer($outputParameters/ns2:VO_CD_PESSOA) }</ns1:id>
                <ns1:nome>{ data($parametrosCadastraPessoa/ns0:pessoa/ns1:nome) }</ns1:nome>
                <ns1:dataNascimento>{ data($parametrosCadastraPessoa/ns0:pessoa/ns1:dataNascimento) }</ns1:dataNascimento>
                <ns1:cnpj>{ data($parametrosCadastraPessoa/ns0:pessoa/ns1:cnpj) }</ns1:cnpj>
                <ns1:telefone>{ data($parametrosCadastraPessoa/ns0:pessoa/ns1:telefone) }</ns1:telefone>
            </ns0:pessoa>
        </ns0:resultadoCadastraPessoa>
};

declare variable $outputParameters as element(ns2:OutputParameters) external;
declare variable $parametrosCadastraPessoa as element(ns0:parametrosCadastraPessoa) external;

xf:SPIPessoToCadastraPessoaResponse($outputParameters,
    $parametrosCadastraPessoa)]]></con:xquery>
    <con:dependency location="../Adapter/AdapterSGBD/xsd/SPI_PESSOA_sp.xsd">
        <con:schema ref="OSB_BHK/BHK/Resources/Adapter/AdapterSGBD/xsd/SPI_PESSOA_sp"/>
    </con:dependency>
    <con:dependency location="../EBS/xsd/ParametrosPessoa.xsd">
        <con:schema ref="OSB_BHK/BHK/Resources/EBS/xsd/ParametrosPessoa"/>
    </con:dependency>
</con:xqueryEntry>