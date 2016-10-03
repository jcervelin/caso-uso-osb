<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery>(:: pragma bea:global-element-parameter parameter="$parametrosWhiteList" element="ns1:ParametrosWhiteList" location="../../Interfaces/Schemas/InternalWhiteList.xsd" ::)
(:: pragma bea:global-element-return element="ns0:ParametrosInternal" location="../../../Mock_internal/Interfaces/Schemas/Internal.xsd" ::)

declare namespace ns1 = "http://whitelist.com.br/SN/WhiteList";
declare namespace ns0 = "http://internal.com.br/SN/Internal";
declare namespace xf = "http://tempuri.org/Mock_Legacy/Resources/Transformations/inputInternalWhiteList_To_Internal/";

declare function xf:inputInternalWhiteList_To_Internal($parametrosWhiteList as element(ns1:ParametrosWhiteList))
    as element(ns0:ParametrosInternal) {
        &lt;ns0:ParametrosInternal>
            &lt;ns0:num_documento>{ data($parametrosWhiteList/ns1:num_documento) }&lt;/ns0:num_documento>
        &lt;/ns0:ParametrosInternal>
};

declare variable $parametrosWhiteList as element(ns1:ParametrosWhiteList) external;

xf:inputInternalWhiteList_To_Internal($parametrosWhiteList)</con:xquery>
    <con:dependency location="../../Interfaces/Schemas/InternalWhiteList.xsd">
        <con:schema ref="Mock_Legacy/Interfaces/Schemas/InternalWhiteList"/>
    </con:dependency>
    <con:dependency location="../../../Mock_internal/Interfaces/Schemas/Internal.xsd">
        <con:schema ref="Mock_internal/Interfaces/Schemas/Internal"/>
    </con:dependency>
</con:xqueryEntry>