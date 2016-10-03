<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery>(:: pragma bea:global-element-parameter parameter="$parametrosBuscarClientePorCPF1" element="ns1:ParametrosBuscarClientePorCPF" location="../Resources/Schemas/ParametrosBuscarClientePorCPF.xsd" ::)
(:: pragma bea:global-element-return element="ns0:ParametrosGetCustomerByCPF" location="../Resources/Legacy/KGB/Schemas/GetCustomerByCPF.xsd" ::)

declare namespace ns1 = "http://inovix.org";
declare namespace ns0 = "http://kgb.org";
declare namespace xf = "http://tempuri.org/OSB_Inoix_Cabelo/Transformations/ParametrosBuscarClientePorCPF_To_GetCustomerByCPF/";

declare function xf:ParametrosBuscarClientePorCPF_To_GetCustomerByCPF($parametrosBuscarClientePorCPF1 as element(ns1:ParametrosBuscarClientePorCPF))
    as element(ns0:ParametrosGetCustomerByCPF) {
        &lt;ns0:ParametrosGetCustomerByCPF>
            &lt;ns0:cpf>{ data($parametrosBuscarClientePorCPF1/ns1:cpf) }&lt;/ns0:cpf>
        &lt;/ns0:ParametrosGetCustomerByCPF>
};

declare variable $parametrosBuscarClientePorCPF1 as element(ns1:ParametrosBuscarClientePorCPF) external;

xf:ParametrosBuscarClientePorCPF_To_GetCustomerByCPF($parametrosBuscarClientePorCPF1)</con:xquery>
    <con:dependency location="../Resources/Schemas/ParametrosBuscarClientePorCPF.xsd">
        <con:schema ref="OSB_Inoix_Cabelo/Resources/Schemas/ParametrosBuscarClientePorCPF"/>
    </con:dependency>
    <con:dependency location="../Resources/Legacy/KGB/Schemas/GetCustomerByCPF.xsd">
        <con:schema ref="OSB_Inoix_Cabelo/Resources/Legacy/KGB/Schemas/GetCustomerByCPF"/>
    </con:dependency>
</con:xqueryEntry>