<?xml version="1.0" encoding="UTF-8"?>
<con:xqueryEntry xmlns:con="http://www.bea.com/wli/sb/resources/config">
    <con:xquery><![CDATA[(:: pragma bea:schema-type-parameter parameter="$customerKGB1" type="ns1:CustomerKGB" location="../Resources/Legacy/KGB/Schemas/CustomerKGB.xsd" ::)
(:: pragma bea:schema-type-return type="ns0:Cliente" location="../Resources/ModeloCanonico/Cliente.xsd" ::)

declare namespace ns1 = "http://kgb.org";
declare namespace ns0 = "http://inovix.org/MC";
declare namespace xf = "http://tempuri.org/OSB_Inoix_Cabelo/Transformations/Customer_Kgb_To_Customer_MC/";

declare function xf:Customer_Kgb_To_Customer_MC($customerKGB1 as element())
    as element() {
        <ns0:Cliente>
            <ns0:cpf>{ data($customerKGB1/ns1:cpf) }</ns0:cpf>
            <ns0:name>{ data($customerKGB1/ns1:name) }</ns0:name>
            {
                for $statusFinanceiro in $customerKGB1/ns1:statusFinanceiro
                return
                    <ns0:statusFinanceiro>
                        <ns0:debitoAtivo>{ data($statusFinanceiro/ns1:debitoAtivo) }</ns0:debitoAtivo>
                    </ns0:statusFinanceiro>
            }
        </ns0:Cliente>
};

declare variable $customerKGB1 as element() external;

xf:Customer_Kgb_To_Customer_MC($customerKGB1)]]></con:xquery>
    <con:dependency location="../Resources/Legacy/KGB/Schemas/CustomerKGB.xsd">
        <con:schema ref="OSB_Inoix_Cabelo/Resources/Legacy/KGB/Schemas/CustomerKGB"/>
    </con:dependency>
    <con:dependency location="../Resources/ModeloCanonico/Cliente.xsd">
        <con:schema ref="OSB_Inoix_Cabelo/Resources/ModeloCanonico/Cliente"/>
    </con:dependency>
</con:xqueryEntry>