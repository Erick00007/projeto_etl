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


Data Schema e ETL Pipeline
Data Schema
Utilizando as tabelas de pedidos, clientes, representantes de vendas, produtos e promoções foi criado um star schema como apresentado abaixo, que inclui

Uma tabela fato: fato_vendas, e
Cinco tabelas dimensões: dim_clientes, dim_repvendas, dim_produtos, dim_promocoes e dim_data.
Star Schema UML

ETL Pipeline
O ETL pipeline extrai os dados dos arquivos .csv e faz a inserção nas tabelas da base st_area, sendo nossa staging area.

A partir das tabelas que chegam na staging area serão feitas as devidas transformações nos dados e criação das tabelas do Data Warehouse, sendo armazenadas na base dw.

Ambas as bases de dados foram criadas no banco de dados relacional, postgre.



Abaixo temos um diagrama representativo do que foi descrito acima.









Arquivos do Projeto
data
pedidos.csv
dados dos pedidos realizados
repvendas.csv
dados dos representantes de vendas
produtos.csv
dados dos produtos oferecidos
promoções.csv
dados das promoções relacionadas aos produtos
clientes.csv
dados dos clientes da empresa
images
Imagens do documento
transformations
importa_csv.ktr
transformação que extrai os dados dos arquivos .csv e insere os resultados nas tabelas da base st_area
dim_clientes.ktr
transformação que realiza o processamento da tabela de clientes e insere os resultados na tabela dim_cliente na base dw
dim_data.ktr
transformação que cria e insere dados relacionados a datas na tabela dim_data na base dw
dim_produtos.ktr
transformação que realiza o processamento da tabela de produtos e insere os resultados na tabela dim_produtos na base dw
dim_promocoes.ktr
transformação que realiza o processamento da promoções dos produtos e insere os resultados na tabela dim_promocoes na base dw
dim_repvendas.ktr
transformação que realiza o processamento da tabela de representates de vendas e insere os resultados na tabela dim_repvendas na base dw
fato_vendas.ktr
transformação que realiza o processamento da tabela de pedidos e insere os resultados na tabela fato_vendas
jobs
ETL.kjb
