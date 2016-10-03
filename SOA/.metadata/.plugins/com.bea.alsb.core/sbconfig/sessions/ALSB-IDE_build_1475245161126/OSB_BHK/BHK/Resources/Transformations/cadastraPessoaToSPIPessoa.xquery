<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:global-element-parameter parameter="$parametrosCadastraPessoa" element="ns0:parametrosCadastraPessoa" location="../EBS/xsd/ParametrosPessoa.xsd" ::)
(:: pragma bea:global-element-return element="ns2:InputParameters" location="../Adapter/AdapterSGBD/xsd/SPI_PESSOA_sp.xsd" ::)

declare namespace ns2 = "http://xmlns.oracle.com/pcbpel/adapter/db/sp/SPI_PESSOA";
declare namespace ns1 = "http://sysmap.com.br/MC/CursoSOA/Cabelo";
declare namespace ns0 = "http://sysmap.com.br/SN/Pessoa";
declare namespace xf = "http://tempuri.org/OSB_BHK/BHK/Resources/Transformations/cadastraPessoaToSPIPessoa/";

declare function xf:cadastraPessoaToSPIPessoa($parametrosCadastraPessoa as element(ns0:parametrosCadastraPessoa))
    as element(ns2:InputParameters) {
        <ns2:InputParameters>
            <ns2:VI_DS_NOME>{ data($parametrosCadastraPessoa/ns0:pessoa/ns1:nome) }</ns2:VI_DS_NOME>
            <ns2:VI_DT_NASCIMENTO>{ xs:date($parametrosCadastraPessoa/ns0:pessoa/ns1:dataNascimento) }</ns2:VI_DT_NASCIMENTO>
            <ns2:VI_NM_CNPJ>{ data($parametrosCadastraPessoa/ns0:pessoa/ns1:cnpj) }</ns2:VI_NM_CNPJ>
            <ns2:VI_NM_TELEFONE>{ xs:string($parametrosCadastraPessoa/ns0:pessoa/ns1:telefone) }</ns2:VI_NM_TELEFONE>
        </ns2:InputParameters>
};

declare variable $parametrosCadastraPessoa as element(ns0:parametrosCadastraPessoa) external;

xf:cadastraPessoaToSPIPessoa($parametrosCadastraPessoa)]]></con:xquery>
    <con:dependency location="../EBS/xsd/ParametrosPessoa.xsd">
        <con:schema ref="OSB_BHK/BHK/Resources/EBS/xsd/ParametrosPessoa"/>
    </con:dependency>
    <con:dependency location="../Adapter/AdapterSGBD/xsd/SPI_PESSOA_sp.xsd">
        <con:schema ref="OSB_BHK/BHK/Resources/Adapter/AdapterSGBD/xsd/SPI_PESSOA_sp"/>
    </con:dependency>
</con:xqueryEntry>