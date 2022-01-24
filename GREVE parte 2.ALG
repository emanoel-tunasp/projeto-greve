Algoritmo "GREVE"

Var
   nome,email:caractere
   idade,carro,d,valor,cont,n ,s,maior:inteiro

Inicio

   escreval

   escreval("________________________________SEJA BEM VINDO, A GREVE GERAL____________________________")

   escreval

   escreval("-----O PROJETO GRAVE GERAL FOI CRIADO PARA REIVINDICAR OS DIREITOS DA POPULAÇÃO----------")

   escreval

   escreval("O PRIMEIRO PROJETO SERA VOLTADO PARA O TRANSPORTE PLUBICO DE ALTO VALOR E BAIXA QUALIDADE")

   escreval

   escreval("---A PRIMEIRA GREVE SERÁ NA CIDADE DE RECIFE,ONDE NINGUEM VAI PEGAR TRANSPORTE PUBLICO---")

   escreval

   escreval("PARA PARTICIPAR PRECISAMOS QUE VOCÊ PREENCHA UMA FICHA COM INFORMAÇÕES QUE POSSAM AJUDAR-")

   escreval
   escreval("qual e o seu e-mail?")
   leia(email)
   escreval("Qual e o seu nome e sobre nome ?")
   leia(nome)
   escreval("Qual a sua idade")
   leia(idade)
   se (idade =18)então
      escreval("você pode ter habilitação mais ainda é provisoria então você so poderar pegar carona")
   senao
      se(idade >=21)entao
         escreval("você ja pode dar caronas e receber uma gratificação maior")
      senão
      fimse
   fimse
   escreval("Você tem carro ? 1 ou 0")
   leia (carro)
   se(carro =  1)então
      escreval("Você pode ajudar outras pessoas na greve geral dando caronas ",nome )
   senão
      se(carro <=0 )então
         escreval("Você pode participar da greve não pegando onibus e sim caronas ",nome)
      senão
      fimse
   fimse

   escreval("-----------------------------------------------------------------")
   escreval("    FAÇA PARTE DA MUDANÇA PARA UM MUNDO MELHOR                   ")
   escreval("-----------------------------------------------------------------")
   escreval("LISTA DE VALORES PARA QUEM PARTICIPAR DA GREVE COMO FORMA DE REMUNERAÇÃO")
   escreval("[1]PARA PEGAR CARONA VOCÊ VAI RECEBER R$5")
   escreval("[2]PARA DAR CARONA PARA UMA PESSOA VOCÊ VAI RECEBER$10")
   escreval("[3]PARA DAR CARONA PARA DUAS PESSOA VOCÊ VAI RECEBER R$20")
   escreval("[4]PARA DAR CARONA PARA MAIS DE 4 PESSOAS  :")
   escreval("[5]para cancelar 0  ")
   leia (d)
   escolha d

   caso 1
      valor <- 5
   caso 2
      valor <- 10
   caso 3
      valor <- 20
   caso 4
      escreval("QUANTO VOCÊ PRETENDE RECEBER COM SUAS CARONAS ?")
      leia(valor)
   caso 5
      escreval(" MUITO OBRIGADO POR ESTAR DISPOSTO A PELO MENOS CONHECER NOSSO MOVIMENTO")

   fimescolha
   ESCREVAL("COLOQUE OS VALORES RECEBIDOS EM CADA DIA DE GREVE E VEJA QUANTO VAI GANHAR")
   s <- 0
   Enquanto (cont <= 30 ) faca
      escreva("digite o ",cont,"o.valor : ")
      leia(n)
      se (n > maior)entao
         maior <- n
      fimse
      s <- s + n
      cont <- cont +1
   fimenquanto
   escreval("SE VOCÊ PARTICIPAR DA GREVE POR 30 DIAS VAI GANHAR",s)
   escreval("o maior valor digitado foi ", maior)

   escreval("--------------------------------------------------------------------------------------------")
   escreval(   "VAMOS ENTRA EM CONTATO PARA MAIS INFORMAÇÕES.MANDAREMOS MENSAGEM NO E-MAIL " ,email)
   escreval("--------------------------------------------------------------------------------------------")
   escreval("----------------------------------------------------------------------------------------------------------------------------")
   escreval("LEMBRANDO QUE O OBJETIVO DA GREVE NÃO É GANHAR DINHEIRO A RENDA DISPONIBILIZADA E APENAS UM INSENTIVO PARAS OS PARTICIPANTES")
   escreval("----------------------------------------------------------------------------------------------------------------------------")
Fimalgoritmo
