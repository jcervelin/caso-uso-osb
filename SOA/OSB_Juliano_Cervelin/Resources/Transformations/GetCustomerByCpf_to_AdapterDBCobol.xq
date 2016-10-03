(:: pragma bea:global-element-parameter parameter="$getCustomerByCPF1" element="ns1:GetCustomerByCPF" location="../Legacy/Schemas/ParametrosYUM.xsd" ::)
(:: pragma bea:global-element-return element="ns0:getCustomerByCpfInput" location="../Adapters/AdapterDBCobol/xsd/getCustomerByCpf.xsd" ::)

declare namespace ns1 = "http://acme.com.br/SN/YUMService/JulianoCervelin";
declare namespace ns0 = "http://xmlns.oracle.com/pcbpel/adapter/db/getCustomerByCpf";
declare namespace xf = "http://tempuri.org/OSB_Juliano_Cervelin/Resources/Transformations/GetCustomerByCpf_to_AdapterDBCobol/";

declare function xf:GetCustomerByCpf_to_AdapterDBCobol($getCustomerByCPF1 as element(ns1:GetCustomerByCPF))
    as element(ns0:getCustomerByCpfInput) {
        <ns0:getCustomerByCpfInput>
            <ns0:cpf>{ data($getCustomerByCPF1/ns1:cpf) }</ns0:cpf>
        </ns0:getCustomerByCpfInput>
};

declare variable $getCustomerByCPF1 as element(ns1:GetCustomerByCPF) external;

xf:GetCustomerByCpf_to_AdapterDBCobol($getCustomerByCPF1)
