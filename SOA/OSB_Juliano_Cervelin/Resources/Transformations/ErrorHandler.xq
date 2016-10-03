(:: pragma  parameter="$fault" type="anyType" ::)
(:: pragma bea:global-element-return element="ns0:acmeFault" location="../../ModeloCanonico/AcmeFault.xsd" ::)

declare namespace con= "http://www.bea.com/wli/sb/context";
declare namespace ns0 = "http://acme.com.br/MC/JulianoCervelin";
declare namespace xf = "http://tempuri.org/OSB_Juliano_Cervelin/Resources/Transformations/ErrorHandler/";

declare function xf:ErrorHandler($fault as element(*))
    as element(ns0:acmeFault) {
        <ns0:acmeFault>
            <ns0:codigo>{ data($fault/con:errorCode) }</ns0:codigo>
            <ns0:descricao>{ data($fault/con:reason) }</ns0:descricao>
            <ns0:detalhe>{ data($fault/con:details) }</ns0:detalhe>
        </ns0:acmeFault>
};

declare variable $fault as element(*) external;

xf:ErrorHandler($fault)