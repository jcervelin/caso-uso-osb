(:: pragma bea:global-element-parameter parameter="$getCustomerByCPFResponse1" element="ns1:GetCustomerByCPFResponse" location="../Legacy/Schemas/ParametrosYUM.xsd" ::)
(:: pragma bea:global-element-return element="ns1:UpdateCustomer" location="../Legacy/Schemas/ParametrosYUM.xsd" ::)

declare namespace ns1 = "http://acme.com.br/SN/YUMService/JulianoCervelin";
declare namespace ns0 = "http://acme.com.br/MC/JulianoCervelin";
declare namespace xf = "http://tempuri.org/OSB_Juliano_Cervelin/Resources/Transformations/GetCustomerByCPFResponse_To_UpdateCustomer/";

declare function xf:GetCustomerByCPFResponse_To_UpdateCustomer($getCustomerByCPFResponse1 as element(ns1:GetCustomerByCPFResponse),
    $statusFinanceiro as xs:string)
    as element(ns1:UpdateCustomer) {
        <ns1:UpdateCustomer>
            <ns1:customer>
                <ns0:id>{ data($getCustomerByCPFResponse1/ns1:customer/ns0:id) }</ns0:id>
                <ns0:nome>{ data($getCustomerByCPFResponse1/ns1:customer/ns0:nome) }</ns0:nome>
                <ns0:dataNascimento>{ data($getCustomerByCPFResponse1/ns1:customer/ns0:dataNascimento) }</ns0:dataNascimento>
                <ns0:cpf>{ data($getCustomerByCPFResponse1/ns1:customer/ns0:cpf) }</ns0:cpf>
                <ns0:telefone>{ data($getCustomerByCPFResponse1/ns1:customer/ns0:telefone) }</ns0:telefone>
                <ns0:statusFinanceiro>{ $statusFinanceiro }</ns0:statusFinanceiro>
            </ns1:customer>
        </ns1:UpdateCustomer>
};

declare variable $getCustomerByCPFResponse1 as element(ns1:GetCustomerByCPFResponse) external;
declare variable $statusFinanceiro as xs:string external;

xf:GetCustomerByCPFResponse_To_UpdateCustomer($getCustomerByCPFResponse1,
    $statusFinanceiro)
