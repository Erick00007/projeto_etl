<h1>ETL no Pentaho Data Integration</h1>
  
  
  
<h2>Introdução</h2>

 Trata-se de um projeto para praticar ETL com Pentaho, modelagem de dados com postgres .

Requisitos do Projeto:

+  Análise de vendas por Território.

+  Análise de vendas por Região.

+  Análise de vendas por Produto.
	Armazenar o histórico de produtos com a categoria e subcategoria.
  
  
+  Análise de compra por Cliente.
	Nome completo do cliente (PrimeiroNome + ÚltimoNome)
	
## Data Schema
Utilizando as tabelas de pedidos, clientes, região,categoria, territorio,subcategoria e vendasnet produtos e promoções foi criado um star schema como apresentado abaixo, que inclui

Uma tabela fato: fato e
Cinco tabelas dimensões: dim_clientes, dim_região, dim_tempo, dim_produto e dim_territorio.


Ambas as bases de dados foram criadas no banco de dados relacional, postgre.

Abaixo temos um diagrama representativo do que foi descrito acima.


<img width="446" alt="Captura de tela 2023-05-23 143250" src="https://github.com/Erick00007/projeto_etl/assets/118026617/6e10878e-fc09-4e14-a670-31b63e92f58c">



## ETL Pipeline

O ETL pipeline extrai os dados dos arquivos .csv e faz a inserção nas tabelas da base st_area, sendo nossa staging area.

A partir das tabelas que chegam na staging area serão feitas as devidas transformações nos dados e criação das tabelas do Data Warehouse, sendo armazenadas na base dw.

1)  peguei os arquivos csv de clientes.csv, produtos.csv, territorio.csv e etc.
2)  criei as tabelas realacional no postgres.
3)  levei esses dados para o pentaho e inseri num banco de dados no postgres,no banco de dados stagin área.
4)  transformei esse dados e depois de tratado leva para um banco DW, com os seguintes requisitos. Análise de vendas por Território.
Análise de vendas por Região,Análise de vendas por Produto Armazenar o histórico de produtos com a categoria e subcategoria, Análise de compra por Cliente 
Nome completo do cliente (PrimeiroNome + ÚltimoNome).
e fiz dimissoes com esse requisitos e tabela fato com as chaves primarias das tabela e virou chave estrangeira para conectar as tabelas.
