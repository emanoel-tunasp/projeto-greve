Algoritmo "GREVE"

Var
   nome:caractere
   idade,carro,pe,valor:inteiro

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
   escreval("Qual e o seu nome?")
   leia(nome)
   escreval("Qual a sua idade")
   leia(idade)
   escreval("Você tem carro ? 1 ou 0")
   leia (carro)
   se(carro = 1 )então
      escreval("Você pode ajudar outras pessoas na greve geral dando caronas ",nome )
   senão
      se(carro <= 0)então
         escreval("Você pode participar da greve não pegando onibus e sim caronas ",nome)
      senão
      fimse
   fimse
escreval("____________________________________________________________________________________________")
escreval("-----------------------------COMO VOCÊ PODERAR AJUDAR---------------------------------------")
escreval("____________________________________________________________________________________________")
escreval("Muito obrigado pelo apoio")
escreval("[1]para pegar  carona R$5")
escreval("[2]para dar carona para 1 pessoa R$20 ")
escreval("[3]para dar carona para 2 pessoas R$40")
escreval("[4]para dar carona para 3 pessoas R$60")
escreval("[5]para dar carona para 4 pessoas R$80")
escreval("[6]para dar carona para mais de 4 pessoas .quantas?")
escreval("[7]não quero fazer parte da greve cancelarR$0")
leia (pe)
escolha pe
caso1
 valor <- 5
caso2
 valor <- 20
caso3
 valor <- 40
caso4
 valor <- 60
caso5
 valor <- 80
caso6
escreval("Quanto você pretende ganhar ajudando")
 leia (valor)
caso7
 valor <- 0
 fimescolha

Fimalgoritmo