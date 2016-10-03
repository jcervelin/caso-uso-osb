(:: pragma bea:global-element-parameter parameter="$solicitarPortabilidade1" element="ns0:SolicitarPortabilidade" location="../EBS/xsd/ParametrosINOVIX.xsd" ::)
(:: pragma bea:global-element-return element="ns1:GetCustomerByCPF" location="../Legacy/Schemas/ParametrosYUM.xsd" ::)

declare namespace ns1 = "http://acme.com.br/SN/YUMService/JulianoCervelin";
declare namespace ns0 = "http://acme.com.br/SN/INOVIXService/JulianoCervelin";
declare namespace xf = "http://tempuri.org/OSB_Juliano_Cervelin/Resources/Transformations/SolicitarPortabilidade_To_GetCustomerByCPF/";

declare function xf:SolicitarPortabilidade_To_GetCustomerByCPF($solicitarPortabilidade1 as element(ns0:SolicitarPortabilidade))
    as element(ns1:GetCustomerByCPF) {
        <ns1:GetCustomerByCPF>
            <ns1:cpf>{ data($solicitarPortabilidade1/ns0:cpf) }</ns1:cpf>
        </ns1:GetCustomerByCPF>
};

declare variable $solicitarPortabilidade1 as element(ns0:SolicitarPortabilidade) external;

xf:SolicitarPortabilidade_To_GetCustomerByCPF($solicitarPortabilidade1)
