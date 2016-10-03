<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$qUERY_T_PESSOAOutputCollection" element="ns2:QUERY_T_PESSOAOutputCollection" location="../Adapter/AdapterSGBD/xsd/QUERY_T_PESSOA.xsd" ::)
(:: pragma bea:global-element-return element="ns0:resultadoBuscaPessoa" location="../EBS/xsd/ParametrosPessoa.xsd" ::)

declare namespace ns2 = "http://xmlns.oracle.com/pcbpel/adapter/db/QUERY_T_PESSOA";
declare namespace ns1 = "http://sysmap.com.br/MC/CursoSOA/Cabelo";
declare namespace ns0 = "http://sysmap.com.br/SN/Pessoa";
declare namespace xf = "http://tempuri.org/OSB_BHK/BHK/Resources/Transformations/QueryTPessoa_To_ConsultaPessoa/";

declare function xf:QueryTPessoa_To_ConsultaPessoa($qUERY_T_PESSOAOutputCollection as element(ns2:QUERY_T_PESSOAOutputCollection))
    as element(ns0:resultadoBuscaPessoa) {
        <ns0:resultadoBuscaPessoa>
            <ns0:pessoa>
                <ns1:id>{ xs:integer($qUERY_T_PESSOAOutputCollection/ns2:QUERY_T_PESSOAOutput[1]/ns2:CD_PESSOA) }</ns1:id>
                <ns1:nome>{ data($qUERY_T_PESSOAOutputCollection/ns2:QUERY_T_PESSOAOutput[1]/ns2:DS_NOME) }</ns1:nome>
                <ns1:dataNascimento>{ xs:dateTime($qUERY_T_PESSOAOutputCollection/ns2:QUERY_T_PESSOAOutput[1]/ns2:DT_NASCIMENTO) }</ns1:dataNascimento>
                <ns1:cnpj>{ data($qUERY_T_PESSOAOutputCollection/ns2:QUERY_T_PESSOAOutput[1]/ns2:NM_CNPJ) }</ns1:cnpj>
                <ns1:telefone>{ xs:integer($qUERY_T_PESSOAOutputCollection/ns2:QUERY_T_PESSOAOutput[1]/ns2:NM_TELEFONE) }</ns1:telefone>
            </ns0:pessoa>
        </ns0:resultadoBuscaPessoa>
};

declare variable $qUERY_T_PESSOAOutputCollection as element(ns2:QUERY_T_PESSOAOutputCollection) external;

xf:QueryTPessoa_To_ConsultaPessoa($qUERY_T_PESSOAOutputCollection)]]></con:xquery>
    <con:dependency location="../Adapter/AdapterSGBD/xsd/QUERY_T_PESSOA.xsd">
        <con:schema ref="OSB_BHK/BHK/Resources/Adapter/AdapterSGBD/xsd/QUERY_T_PESSOA"/>
    </con:dependency>
    <con:dependency location="../EBS/xsd/ParametrosPessoa.xsd">
        <con:schema ref="OSB_BHK/BHK/Resources/EBS/xsd/ParametrosPessoa"/>
    </con:dependency>
</con:xqueryEntry>