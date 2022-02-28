Algoritmo "greve geral 5"

Var

   numero : vetor[1..5] de inteiro
   NOME   : vetor[1..5] de Caracter
   IDADE  : vetor[1..5] de caracter
   indice : inteiro
   L,XL :  LOGICO
   OPCAO : Caracter




FUNÇÃO PESQUISA(XV: INTEIRO) : LOGICO //EXISTE//
VAR II : INTEIRO
   A : LOGICO
INICIO


   A := FALSO
   PARA II DE 1 ATÉ 5 FAÇA
      SE numero[II] = XV ENTÃO
         A := VERDADEIRO
         interrompa
      FIMSE
   FIMPARA
   RETORNE A
FIMFUNÇÃO


PROCEDIMENTO INCLUIR
VAR II  : INTEIRO
   L  :  LOGICO
   xnum : INTEIRO
   xnom : caracter
   xidd : caracter
INICIO
   limpaTela
   Escreval(" INCLUIR ")
   SE indice <= 5 ENTÃO
      xnum := 0
      Xnom := ""
      xidd := ""
      L := VERDADEIRO
      ENQUANTO L FAÇA
         ESCREVA("DIGITE O NUMERO",Indice," : ")
         LEIA(xnum)
         L := PESQUISA(xnum)
      FIMENQUANTO
      ESCREVA("DIGITE o Nome : ")
      LEIA(xnom)
      ESCREVA("DIGITE a Idade: ")
      LEIA(xidd)

      Numero[indice] := xnum
      Nome[indice]   := xnom
      Idade[indice]  := xidd
      indice := indice + 1
   FIMSE

   ESCREVAL(" ")
   ESCREVA("TECLE <ENTER> ")
   LEIA(XL)

FIMPROCEDIMENTO

PROCEDIMENTO CONSULTAR
VAR II : INTEIRO
   L  :  LOGICO
   xnum : INTEIRO
   xnom : caracter
   xidd : caracter

INICIO
   limpaTela

   Escreval(" CONSULTA ")

   PARA II DE 1 ATÉ 5 FAÇA
      ESCREVAL("[",II,"] -> ",NUMERO[II]," ",NOME[II]," ",IDADE[II])//TROCA  MENUS//
   FIMPARA

   ESCREVAL(" ")
   ESCREVA("TECLE <ENTER> ")
   LEIA(XL)

FIMPROCEDIMENTO

PROCEDIMENTO EXCLUIR
VAR  II : INTEIRO
   L  :  LOGICO
   xnum : INTEIRO
   xnom : caracter
   xidd : caracter
   resultado:logico

INICIO
   limpaTela
   Escreval(" EXCLUIR ")
   xnum := 0
   L := VERDADEIRO
   ENQUANTO L FAÇA
      ESCREVA("DIGITE O NUMERO  : ")
      LEIA(xnum)
      resultado := PESQUISA(xnum)
      SE resultado = VERDADEIRO ENTAO   //senao ,erro//
         L :=  FALSO
         NOME[xnum] := ""
         IDADE[xnum]:= ""
         numero[xnum]:=0

      fimse
   FIMENQUANTO



   ESCREVAL(" ")
   ESCREVA("TECLE <ENTER> ")
   LEIA(XL)

FIMPROCEDIMENTO


PROCEDIMENTO ALTERAR
VAR  II : INTEIRO
   L  :  LOGICO
   xnum : INTEIRO
   xnom : caracter
   xidd : caracter

INICIO
   limpaTela
   Escreval(" ALTERAÇÃO ")
   xnum := 0
   Xnom := ""
   xidd := ""
   L := Falso
   ENQUANTO L FAÇA
      ESCREVA("DIGITE O NUMERO : ")
      LEIA(xnum)
      L := PESQUISA(xnum)
   FIMENQUANTO

   ESCREVAL("DIGITE o Nome : ",Nome[ii])
   ESCREVAL("DIGITE a Idade: ",Idade[ii])

   ESCREVA("DIGITE o Nome : ")
   LEIA(xnom)
   ESCREVA("DIGITE a Idade: ")
   LEIA(xidd)

   Numero[II] := xnum
   Nome[ii]   := xnom
   Idade[ii]  := xidd

   ESCREVAL(" ")
   ESCREVA("TECLE <ENTER> ")
   LEIA(YL)

FIMPROCEDIMENTO

Inicio

   indice := 1
   L := VERDADEIRO
   OPCAO := ""
   ENQUANTO L FAÇA
      LIMPATELA
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




      ESCREVAL("MENU  DA GREVE GERAL")
      ESCREVAL("1-INCLUSÃO")
      ESCREVAL("2-CONSULTA")
      ESCREVAL("3-EXCLUSÃO")
      ESCREVAL("4-ALTERAÇÃO")
      ESCREVAL("5-FINALIZAR")
      ESCREVAL(" ")
      Escreva("Digite a opção:")
      Leia(opcao)
      ESCOLHA OPCAO FAÇA
      CASO "1"
         INCLUIR
      CASO "2"
         CONSULTAR
      CASO "3"
         EXCLUIR
      CASO "4"
         ALTERAR
      CASO "5"
         L := FALSO
      OUTROCASO
         ESCREVAL("OPÇÃO INVÁLIDA !!!")
         ESCREVAL(" ")
         ESCREVA("TECLE <ENTER> ")
         LEIA(XL)
      FIMESCOLHA
   FIMENQUANTO
Fimalgoritmo