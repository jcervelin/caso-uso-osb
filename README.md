# Caso de Uso OSB
Material utilizado no curso SOA

Uma empresa prestadora de serviços de telefonia ACME quer propor uma solução para integrar 3 sistemas legados a um novo sistema chamado de INOVIX [ASP .NET]. 
Este novo sistema de vendas será responsável por realizar a migração de um número de linha portado de outra operadora.
Para que este tipo de serviço seja realizado, uma serie de operações devem acontecer ao longo do processo.
Dos 3 legados existentes, temos:
1.	YUM – Legado responsável por manter dados de cadastro de pessoas de vendas realizadas por telefone [SAP].
2.	APT – Legado responsável por realizar a comunicação entre a operadora de telefonia e a ANATEL durante o processo de solicitação de portabilidade [JAVA].
3.	KGB – Legado responsável por manter dados de cobrança e tramitação de informações de venda, pedidos, números, etc (Exceto dados do cliente, já mantidos pelo Legado YUM) [COBOL].
Além dos legados, todo processo de solicitação de portabilidade deve ser informado para uma entidade externa provida pela ANATEL. A solicitação da portabilidade incide em prover uma janela (período em dias) em que a operadora de origem tem para desligar o número do cliente e que a operadora de destino tem para ligar o número. Este processo deve ser imediato, ou seja, o cliente não poderá ficar sem acesso ao seu telefone em momento algum. O máximo que poderá acontecer é um perídio em horas de no máximo 4 horas de instabilidade. Este período é informado pela ANATEL.
O cliente pode solicitar o processo de portabilidade tanto na operadora de origem ou destino.
Existe um ponto muito importante neste processo que remete a multa de R$50.000,00 por dia de indisponibilidade de serviço que sempre será rateado entre a operadora de origem e destino.
A empresa ACME quer uma arquitetura em alto nível desta objetivando atender este processo. 
Entenda que para esta solução, será necessário prover:
1.	Todos as operações [processo de solicitação de portabilidade e de saída para outra operadora por portabilidade]; 
2.	Tipos de operações [síncronas, assíncronas, one-way]; 
3.	Fluxo completo do processo;
4.	Análise de risco arquitetural;
5.	Restrições [caso existam];
6.	Processo de compensação;
O custo operacional limitou o fornecedor a duas reuniões somente para fechar o escopo do projeto. Portanto, use com sabedoria. 

