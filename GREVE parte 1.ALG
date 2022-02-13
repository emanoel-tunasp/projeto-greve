Algoritmo "GREVE"

Var
   carro:caractere
   nome:vetor [0..4] de caractere
   list,idade,pe,valor:inteiro
   resposta:caractere

Inicio



   escreval

   escreval("________________________________SEJA BEM VINDO, A GREVE GERAL______________________________")

   escreval

   escreval("-    O PROJETO GRAVE GERAL FOI CRIADO PARA REIVINDICAR OS DIREITOS DA POPULAÇÃO           -")

   escreval

   escreval("-O PRIMEIRO PROJETO SERA VOLTADO PARA O TRANSPORTE PLUBICO DE ALTO VALOR E BAIXA QUALIDADE -")

   escreval

   escreval("-  A PRIMEIRA GREVE SERÁ NA CIDADE DE RECIFE,ONDE NINGUEM VAI PEGAR TRANSPORTE PUBLICO    -")

   escreval

   escreval("-PARA PARTICIPAR PRECISAMOS QUE VOCÊ PREENCHA UMA FICHA COM INFORMAÇÕES QUE POSSAM AJUDAR -")
   escreval("___________________________________________________________________________________________")

   para list de 0 ate 4 faca
      escreval("Digite o nome da", list ,"caronistas:/participante 0 e o condutor")
      leia(nome[list])
   fimpara
   escreval("_________________________________________________________________________________________")
   escreval("-----------------------------------LISTA DE PARTICIPANTES------------------------------  ")
   escreval("_________________________________________________________________________________________")
   escreva("")
   para list de 0 ate 4 faca
      escreval(nome[list])
   fimpara
   escreval("__________________________________________________________________________________________")
   repita

      ESCREVA ("Informe a sua idade: ")
      LEIA (idade)
      SE idade <=18 ENTAO

         ESCREVAL ("Menores de idade não pode participar da greve  ")
      SENAO
         ESCREVAL ("Párabens você e maior de idade ja pode participar")
      FIMSE

      ESCREVAL ("você pretende continua ?[S/N]")
      leia (resposta)
   ate (resposta = "N")


escreval("____________________________________________________________________________________________")
escreval("-------------------------MENU PRINCIPAL PARA ESCOLHA DE VEICULOS----------------------------")
escreval("____________________________________________________________________________________________")
escreval("ESCOLHA SEU VEICULO")
escreval("[1]para pegar  carona ")
escreval("[2]para dar carona de moto ")
escreval("[3]para dar carona de carro")
escreval("[4]para dar carona de vam")
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
fimescolha
Fimalgoritmo