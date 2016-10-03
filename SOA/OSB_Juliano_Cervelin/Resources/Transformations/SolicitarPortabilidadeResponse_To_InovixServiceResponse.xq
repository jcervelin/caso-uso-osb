(:: pragma bea:global-element-parameter parameter="$solicitarBilhetePortabilidadeResponse1" element="ns0:SolicitarBilhetePortabilidadeResponse" location="../Legacy/Schemas/ParametrosAPT.xsd" ::)
(:: pragma bea:global-element-return element="ns1:SolicitarPortabilidadeResponse" location="../EBS/xsd/ParametrosINOVIX.xsd" ::)

declare namespace ns2 = "http://acme.com.br/MC/JulianoCervelin";
declare namespace ns1 = "http://acme.com.br/SN/INOVIXService/JulianoCervelin";
declare namespace ns0 = "http://acme.com.br/SN/APTService/JulianoCervelin";
declare namespace xf = "http://tempuri.org/OSB_Juliano_Cervelin/Resources/Transformations/SolicitarPortabilidadeResponse_To_InovixServiceResponse/";

declare function xf:SolicitarPortabilidadeResponse_To_InovixServiceResponse($solicitarBilhetePortabilidadeResponse1 as element(ns0:SolicitarBilhetePortabilidadeResponse))
    as element(ns1:SolicitarPortabilidadeResponse) {
        <ns1:SolicitarPortabilidadeResponse>
            <ns1:portabilidade>
                <ns2:bilhetePortabilidade>{ data($solicitarBilhetePortabilidadeResponse1/ns0:portabilidade/ns2:bilhetePortabilidade) }</ns2:bilhetePortabilidade>
                <ns2:dataHoraJanela>{ data($solicitarBilhetePortabilidadeResponse1/ns0:portabilidade/ns2:dataHoraJanela) }</ns2:dataHoraJanela>
                <ns2:operadoraOrigem>
                    <ns2:nome>{ data($solicitarBilhetePortabilidadeResponse1/ns0:portabilidade/ns2:operadoraOrigem/ns2:nome) }</ns2:nome>
                </ns2:operadoraOrigem>
                <ns2:operadoraDestino>
                    <ns2:nome>{ data($solicitarBilhetePortabilidadeResponse1/ns0:portabilidade/ns2:operadoraDestino/ns2:nome) }</ns2:nome>
                </ns2:operadoraDestino>
            </ns1:portabilidade>
        </ns1:SolicitarPortabilidadeResponse>
};

declare variable $solicitarBilhetePortabilidadeResponse1 as element(ns0:SolicitarBilhetePortabilidadeResponse) external;

xf:SolicitarPortabilidadeResponse_To_InovixServiceResponse($solicitarBilhetePortabilidadeResponse1)
