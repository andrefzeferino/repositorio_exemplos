setwd('C:/Dados')

####LISTA 6

####QUESTÃO 1

dados <- read.csv2('yellow_tripdata_2019-01.csv' , sep=';')
dados
dados_novo <- c(dados, 'passenger_count','trip_distance','PULocationID', 'DOLocationID', 'payment_type', 'fare_amount','tip_amount', 'total_amount')
dados_novo

#função file.head()
head(dados)

#função summary()
summary(dados)

####QUESTÃO 2

install.packages("RMySQL")
install.packages("RSQLite")
library(RMySQL)
library (DBI)
library (RSQLite)



#CONEXÃO CRIADA
mysqlcon <- dbConnect (RSQLite::SQLite(), dbname="TLC (1).db")
#INICIO DA CONEXÃO
dbBegin(mysqlcon) 

#CRIANDO A TABELA Taxa
dbSendQuery(mysqlcon, "create table Taxa(Id int primary key,  Taxa varchar(200) not null,  Imposto float not null)")

#CRIANDO A TABELA TipoPagamento  
dbSendQuery(mysqlcon, "create table TipoPagamento(Id int primary key,  Tipo varchar(200) not null,  Imposto float not null)") 

#CRIANDO A TABELA Viagem 
dbSendQuery(mysqlcon, "create table Viagem(IdViagem BigInt primary key,  Quantidade int not null,  Distancia int not null, 
            Origem int not null, Destino int not null, IdTaxa int, Memoria char(1) not null, IdTipoPagamento varchar(200), Valor int not null)")   
  

#INSERINDO DADOS NAS TABELAS
##Inserir dados na tabela Taxa
dbSendQuery(mysqlcon, "insert into Taxa values(1, 'Standard rate', 0.01)")
dbSendQuery(mysqlcon, "insert into Taxa values(2, 'JFK', 0.02)")
dbSendQuery(mysqlcon, "insert into Taxa values(3, 'Newark', 0.02)")
dbSendQuery(mysqlcon, "insert into Taxa values(4, 'Nassau or Westchester', 0.03)")
dbSendQuery(mysqlcon, "insert into Taxa values(5, 'Negotiated fare', 0.01)")
dbSendQuery(mysqlcon, "insert into Taxa values(6, 'Group ride', 0.01)")
dbSendQuery(mysqlcon, "insert into Taxa values(7, 'Unknown', 0.01)")

##Inserir dados na tabela TipoPagamento 
dbSendQuery(mysqlcon, "insert into TipoPagamento values(1, 'Credit card', 0.03)")
dbSendQuery(mysqlcon, "insert into TipoPagamento values(2, 'Cash', 0.01)")
dbSendQuery(mysqlcon, "insert into TipoPagamento values(3, 'No charge', 0.00)")
dbSendQuery(mysqlcon, "insert into TipoPagamento values(4, 'Dispute', 0.02)")
dbSendQuery(mysqlcon, "insert into TipoPagamento values(5, 'Unknown', 0.03)")
dbSendQuery(mysqlcon, "insert into TipoPagamento values(6, 'Voided trip', 0.01)")


#Vendo Conteudo das tabelas consultas
dbGetQuery (mysqlcon, "SELECT * FROM Taxa")
dbGetQuery (mysqlcon, "SELECT * FROM TipoPagamento")
dbGetQuery (mysqlcon, "SELECT * FROM Viagem")


###Fechar conexão
dbDisconnect(mysqlcon) 
