Algoritmo "greve geral 8"

Var

   numero : vetor[1..5] de inteiro
   nome   : vetor[1..5] de Caracter
   idade  : vetor[1..5] de caracter
   indice : inteiro
   L,enter:  LOGICO
   OPCAO : Caracter




FUNCAO EXISTE(XV: INTEIRO) : LOGICO
Var II : INTEIRO
   A : LOGICO
Inicio


   A := FALSO
   Para II DE 1 Ate 5 Faca
      Se numero[II] = XV Entao
         A := VERDADEIRO
         Interrompa
      Fimse
   Fimpara
   Retorne A
Fimfuncao


Procedimento INCLUIR
Var II  : INTEIRO
   L  :  LOGICO
   xnum : INTEIRO
   xnom : caracter
   xidd : caracter
Inicio
   LimpaTela
   Escreval(" INCLUIR ")
   Se indice <= 5 Entao
      xnum := 0
      Xnom := ""
      xidd := ""
      L := VERDADEIRO
      Enquanto L Faca
         Escreva("DIGITE O NUMERO",Indice," : ")
         Leia(xnum)
         L := EXISTE(xnum)
      Fimenquanto
      Escreva("DIGITE o Nome : ")
      Leia(xnom)
      Escreva("DIGITE a Idade: ")
      Leia(xidd)

      Numero[indice] := xnum
      nome[indice]   := xnom
      Idade[indice]  := xidd
      indice := indice + 1
   Fimse

   Escreval(" ")
   Escreva("TECLE <ENTER> ")
   Leia(enter)

FimProcedimento

Procedimento CONSULTAR
Var II : INTEIRO
   L  :  LOGICO
   xnum : INTEIRO
   xnom : caracter
   xidd : caracter

Inicio
   LimpaTela

   Escreval(" CONSULTA ")

   Para II De 1 Ate 5 Faca
      Escreval("[",II,"] -> ",numero[II]," ",nome[II]," ",idade[II])
   Fimpara

   Escreval(" ")
   Escreva("TECLE <ENTER> ")
   Leia(enter)

FimProcedimento

Procedimento EXCLUIR
Var  II : INTEIRO
   L  :  LOGICO
   xnum : INTEIRO
   xnom : caracter
   xidd : caracter
   resultado:logico

Inicio
   LimpaTela
   Escreval(" EXCLUIR ")
   xnum := 0
   L := VERDADEIRO
   Enquanto L Faca
      Para II De 1 Ate 5 Faca
         Escreval("[",II,"] -> ",numero[II]," ",nome[II]," ",idade[II])
      Fimpara
      Escreva("DIGITE O NUMERO  : ")
      Leia(xnum)
      resultado := EXISTE(xnum)
      Se resultado = VERDADEIRO Entao
         L :=  FALSO
         nome[xnum] := ""
         idade[xnum]:= ""
         numero[xnum]:=0
      SeNao
         escreval("ESSA PESSOA NÃO EST NA LISTA TENTE NOVAMENTE")
      Fimse
   FimEnquanto



   Escreval(" ")
   Escreva("TECLE <ENTER> ")
   Leia(enter)

FimProcedimento

Procedimento ALTERAR
Var
   II : INTEIRO
   L  :  LOGICO
   xnum : INTEIRO
   xnom : caracter
   xidd : caracter
   resultado:logico
Inicio
   LimpaTela
   Escreval(" ALTERAÇÃO ")
   xnum := 0

   L := VERDADEIRO
   Enquanto L Faca
      Escreva("DIGITE O NUMERO: ")
      Leia(xnum)
      resultado := EXISTE(xnum)
      Para II De 1 Ate 5 Faca
         Escreval("[",II,"] -> ",numero[II]," ",nome[II]," ",idade[II])
      Fimpara
      se resultado = VERDADEIRO Entao
         escreval("ESCREVA SEU NOME")
         Leia(xnom)
         escreval("ESCREVA SUA IDADE")
         Leia(xidd)

         nome[xnum] := xnom
         idade[xnum]:= xidd

         L:= FALSO
      Senao
         Escreval("ESSE NUMERO NÃO EXISTE NA LISTA.tente novamente")

      Fimse
   FimEnquanto
   Escreval(" ")
   Escreval("TECLE <ENTER>")
   Leia(enter)

FimProcedimento


Inicio
   L := verdadeiro
   Enquanto L Faca
      Escreval("________________________________SEJA BEM VINDO, A GREVE GERAL______________________________ ")



      Escreval("-    O PROJETO GRAVE GERAL FOI CRIADO PARA REIVINDICAR OS DIREITOS DA POPULAÇÃO            -")



      Escreval("-O PRIMEIRO PROJETO SERA VOLTADO PARA O TRANSPORTE PLUBICO DE ALTO VALOR E BAIXA QUALIDADE -")



      Escreval("-  A PRIMEIRA GREVE SERÁ NA CIDADE DE RECIFE,ONDE NINGUEM VAI PEGAR TRANSPORTE PUBLICO     -")



      Escreval("-PARA PARTICIPAR PRECISAMOS QUE VOCÊ PREENCHA UMA FICHA COM INFORMAÇÕES QUE POSSAM AJUDAR  -")
      Escreval("____________________________________________________________________________________________")


      escreval("Você esta disposto a paticipar?")

      L:= falso



   FimEnquanto
   Escreval(" ")
   Escreval("TECLE <ENTER>")
   Leia(enter)

   limpatela
   Interrompa



   indice := 1
   L := VERDADEIRO
   OPCAO := ""
   Enquanto L Faca
      LimPatela

   MUDACOR("Amarelo","FRENTE")


   Escreval("_______________________MENU  DA GREVE GERAL______________________")
   Escreval("1-INCLUSÃO")
   Escreval("2-CONSULTA")
   Escreval("3-EXCLUSÃO")
   Escreval("4-ALTERAÇÃO")
   Escreval("5-FINALIZAR")
   Escreval(" ")
   Escreval("________________________________________________________________ ")
   Escreval("Digite a opção:")
   Leia(opcao)
   Escolha OPCAO Faca
   Caso "1"
      INCLUIR
   Caso "2"
      CONSULTAR
   Caso "3"
      EXCLUIR
   Caso "4"
      ALTERAR
   Caso "5"
      L := FALSO
   Outrocaso
      Escreval("OPÇÃO INVÁLIDA !!!")
      Escreval(" ")
      Escreval("TECLE <ENTER> ")
      LEIA(enter)
   FimEscolha
FimEnquanto
FimAlgoritmo