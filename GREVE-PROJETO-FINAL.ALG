Algoritmo "GREVE-PROJETO-FINAL"

Var

   numero : vetor[1..5] de Inteiro
   nome   : vetor[1..5] de Caracter
   idade  : vetor[1..5] de Caracter
   L,enter:  Logico
   OPCAO : Caracter
   AM  : Vetor[1..6, 1..7] DE Caracter // A matriz 6X7
   DiaSemana : vetor[0..6] de Caracter  // valor da tabela
   dia,mes,ano : Inteiro
   i,j,k,t,d : Inteiro
   indice,Ultimo,linha,coluna: Inteiro
   a,y,m,q : Real
   aa,yy,mm,qq : Real
   Flag : Logico
   pd,sx,DiaGreve,xs,email : Caracter


Funcao EXISTE(XV: Inteiro) : Logico
Var II : Inteiro
   A : Logico
Inicio


   A := FALSO
   Para II DE 1 Ate 5 Faca
      Se numero[II] = XV Entao
         A := VERDADEIRO
         Interrompa
      FimSe
   FimPara
   Retorne A
FimFuncao


Procedimento INCLUIR   //Para Inserir participantes na greve
Var II  : Inteiro
   L  :  Logico
   xnum : Inteiro
   xnom : Caracter
   xidd : Caracter
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
      FimEnquanto
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
   Escreva("TECLE <ENTER>")
   Leia(enter)

FimProcedimento

Procedimento CONSULTAR    //Para Consultar  a lista de  Participantes já inseridos
Var II : Inteiro
   L  :  Logico
   xnum : Inteiro
   xnom : Caracter
   xidd : Caracter

Inicio
   LimpaTela

   Escreval(" CONSULTA ")

   Para II De 1 Ate 5 Faca
      Escreval("[",II,"] -> ",numero[II]," ",nome[II]," ",idade[II])
   FimPara

   Escreval(" ")
   Escreva("TECLE <ENTER> ")
   Leia(enter)

FimProcedimento

Procedimento EXCLUIR //Excluir Participantes  da lista
Var  II : Inteiro
   L  :  Logico
   xnum : Inteiro
   xnom : Caracter
   xidd : Caracter
   resultado:Logico

Inicio
   LimpaTela
   Escreval(" EXCLUIR ")
   xnum := 0
   L := VERDADEIRO
   Enquanto L Faca
      Para II De 1 Ate 5 Faca
         Escreval("[",II,"] -> ",numero[II]," ",nome[II]," ",idade[II])
      FimPara
      Escreva("DIGITE O NUMERO  : ")
      Leia(xnum)
      resultado := EXISTE(xnum)
      Se resultado = VERDADEIRO Entao
         L :=  FALSO
         nome[xnum] := ""
         idade[xnum]:= ""
         numero[xnum]:=0
      SeNao
         Escreval("ESSA PESSOA NÃO ESTA NA LISTA TENTE NOVAMENTE")
      Fimse
   FimEnquanto



   Escreval(" ")
   Escreva("TECLE <ENTER> ")
   Leia(enter)

FimProcedimento

Procedimento ALTERAR   //Para alterar nome e idade do participante
Var
   II : Inteiro
   L  :  Logico
   xnum : Inteiro
   xnom : Caracter
   xidd : Caracter
   resultado:Logico
Inicio
   LimpaTela
   Escreval(" ALTERAÇÃO ")
   xnum := 0

   L := VERDADEIRO
   Enquanto L Faca
      Para II De 1 Ate 5 Faca
         Escreval("[",II,"] -> ",numero[II]," ",nome[II]," ",idade[II])
      Fimpara

      Escreva("DIGITE O NUMERO: ")
      Leia(xnum)
      resultado := EXISTE(xnum)

      se resultado = VERDADEIRO Entao
         Escreval("ESCREVA SEU NOME")
         Leia(xnom)
         Escreval("ESCREVA SUA IDADE")
         Leia(xidd)

         nome[xnum] := xnom
         idade[xnum]:= xidd

         L:= FALSO
      SeNao
         Escreval("ESSE NUMERO NÃO EXISTE NA LISTA.Tente Novamente")

      FimSe
   FimEnquanto
   Escreval(" ")
   Escreval("TECLE <ENTER>")
   Leia(enter)

FimProcedimento


Inicio        // Boas Vindas  e Explicação  Do Que Se Trata o Programa
   L := verdadeiro
   Enquanto L Faca
      Escreval("________________________________SEJA BEM VINDO, A GREVE GERAL______________________________ ")



      Escreval("-    O PROJETO GRAVE GERAL FOI CRIADO PARA REIVINDICAR OS DIREITOS DA POPULAÇÃO .           -")



      Escreval("-O PRIMEIRO PROJETO SERA VOLTADO PARA O TRANSPORTE PLUBICO DE ALTO VALOR E BAIXA QUALIDADE, -")



      Escreval("-  A PRIMEIRA GREVE SERÁ NA CIDADE DE RECIFE,ONDE NINGUEM VAI PEGAR TRANSPORTE PUBLICO     -")

      Escreval("____________________________________________________________________________________________")


      escreval(" Pressione Enter Para Continuar ?")

      L:= falso



   FimEnquanto
   Escreval(" ")
   Escreval("TECLE <ENTER>")
   Leia(enter)

   LimpaTela
   Interrompa



   indice := 1
   L := VERDADEIRO
   OPCAO := ""
   Enquanto L Faca
      LimpaTela

   Mudacor("Amarelo","FRENTE")

//Menu Do Promraga Mostrando as  Alternativas Para os Participantes

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

Escreval("Escolha o dia que você vai participar da greve ")

Funcao DataOK (DiaGreve : Caracter) : Logico
Var
   Bisext,Resp : Logico
   dia,mes,ano : Inteiro
   xBar1,xbar2 : Inteiro
   Tamh,Ultimo : Inteiro
   B1,B2,Barra : Caracter
Inicio
   // Valores iniciais das variáveis
   Resp:= Verdadeiro
   Tamh:= Compr(DiaGreve)
   Barra:= "/"
   Bisext:= Falso

   Se Tamh = 10 Entao
      Dia := CaracpNum(copia(DiaGreve,1,2))
      B1  := copia(DiaGreve,3,1)
      Mes := CaracpNum(copia(DiaGreve,4,2))
      B2  := copia(DiaGreve,6,1)
      Ano := CaracpNum(copia(DiaGreve,7,4))
   Senao
      Resp:= Falso
   Fimse
   // Compara se o ano está (foi) digitado corretamente
   Se Resp Entao
      xBar1 := Pos(B1,Barra)//volta 0 se não achar 1ª Barra
      xBar2 := Pos(B2,Barra)//volta 0 se não achar 2ª Barra
      Se ((xBar1 > 0) E (xBar2 > 0)) entao // verifica
         Resp := Verdadeiro
      Senao
         Resp := Falso
      Fimse
      Se ((Ano < 1900) Ou (Ano>2350)) Entao
         Resp := Falso
      Senao
         Bisext := ((Ano mod 4) = 0)
      FimSe
      Se ((Mes < 1) Ou (Mes>12)) Entao
         Resp := Falso
      FimSe
      // Compara se o mes está (foi) digitado corretamente
      Ultimo  := 31
      Se (Mes = 2) Entao
         Ultimo := 28
         Se Bisext Entao
            Ultimo := Ultimo + 1 // Ou seja 29
         Fimse
      Fimse
      // Compara se o dia está (foi) digitado corretamente
      SE ((Dia < 1) ou (Dia> Ultimo)) Entao
         Resp := Falso
      FimSe
   Fimse
   // Retorna Verdadeiro ou Falso
   Retorne Resp
Fimfuncao

Funcao StrZero(Numero,Qtde: Inteiro) : Caracter
Var
   Resp : Caracter
   i    : Inteiro
Inicio
   // Preenche a resposta com Quantidade - 1 zeros a esquerda
   Para i de 1 ate Qtde-1 faca
      Resp := "0" + Resp
   Fimpara
   SE Numero < 10 entao
      // Se o numero for menor que 10 coloca um zero na frente.
      Resp := Resp + NumpCarac(Numero)
   SENAO
      //      Transforma em caracter
      Resp := NumpCarac(Numero)
   FIMSE
   //   Retorna a resposta  01,02,03...09,10,11,12..31
   Retorne Resp
Fimfuncao


//  Preenche a variável com os últimos dias de cada mes
sx := "31,28,31,30,31,30,31,31,30,31,30,31"
// Preenche o vetor com os dias da semana
DiaSemana[0] := "Dom"
DiaSemana[1] := "Seg"
DiaSemana[2] := "Ter"
DiaSemana[3] := "Qua"
DiaSemana[4] := "Qui"
DiaSemana[5] := "Sex"
DiaSemana[6] := "Sab"

//  Entra em um laço (loop) pra pedir a data correta
Flag := Verdadeiro
Enquanto Flag Faca
   LimpaTela
   Escreva("DIGITE A DATA QUE VOCÊ PRETENDE FAZER PARTE DA GREVE 99/99/9999 dia,mes,ano : ")
   Leia(DiaGreve)
   Se Nao(DataOK(DiaGreve)) Entao
      Escreval("Data Invalida !!! - Tecle <ENTER>")
      Leia(DiaGreve)
      Flag := Verdadeiro
   SeNao
      Flag := Falso
   FimSe
FimEnquanto
//Desmonta a data em pedaços (dia, mês, ano) conf. a mascara
Dia := CARACPNUM(COPIA(DiaGreve,1,2))
Mes := CARACPNUM(COPIA(DiaGreve,4,2))
Ano := CARACPNUM(COPIA(DiaGreve,7,4))

//  Calcula o primeiro dia do mes para montar o calendário
A := int((14 - Mes) / 12)
Y := Ano - A
M := Mes + (12 * A) - 2
//    q := Dia+int((31*M)/12)+y+int(y/4)-int(y/100)+int(y/400)
q := 01+int((31*M)/12)+y+int(y/4)-int(y/100)+int(y/400)
//     mm:= int((31 * M)/12)
//     qq:= int(y/4)
//     aa:= int(y/100)
//     yy:= int(y/400)
//     q := Dia + mm + y + qq - aa + yy
//  Observação PRA ACHAR O MOD (tem q ser inteiro)
//  nessa fórmula vai retornar de 0-6

d := Int(q)    // Transroma o 'q' em inteiro = int(q)
d := (d mod 7) //(resto da divisão por 7)
xs := DiaSemana[d]    // 'd' é real mas no vetor tem q ser
// um valor inteiro

//  Formula pra calcular a posição do ultimo dia/mês
K      := (Mes * 3) - 2
Ultimo := CaracPNum(Copia(sx,K,2))

// Monta a matriz vazia
Para i De 1 Ate 6 Faca
   Para j De 1 Ate 7 Faca
      am[i,j] := "__"
   FimPara
FimPara
// Preenche a matriz com os dias
T := 1
Linha := 1
Coluna := d + 1 //acrescenta de 1 (Um) p/ posicionar certo
Enquanto T <= Ultimo Faca
   Se T = 1 Entao
      Pd:= "1º"
   SeNao
      Pd:= StrZero(T,2)
   FimSe
   Se((T > 1) e (T = DIA)) Entao
      Pd := "><"
   FimSe
   am[Linha,Coluna] := Pd // carrega o número do dia
   T := T + 1
   Coluna := Coluna + 1
   Se Coluna > 7 Entao
      Coluna := 1
      Linha := Linha + 1
      Se Linha > 6 Entao
         Linha := 1
      FimSE
   FimSe
FimEnquanto

LimpaTela
// Mostra o cabeçalho do calendário
Escreval("Data: ",DiaGreve)
Para i De 0 Ate 6 Faca
   Escreva(DiaSemana[i]," ")
FimPara
// Mostrar o calendário na tela
Para i De 1 Ate 6 Faca
   Escreval(" ")
   Para j De 1 Ate 7 Faca
      Escreva(" ",am[i,j]," ")
   FimPara
FimPara
Escreval(" ")
//

Escreval("Qual e o seu EMAIL ?")
Leia(email)

Escreval("Mandaremos Mais Informações Para O EMAIL ", email ," Falando Sobre Valores.")
Escreval("=========================Muito Obrigado===================================")
Escreval("========Não é o mais forte que sobrevive,nem o mais inteligente,==========")
Escreval("================mas o que melhor se adapta às mudanças.===================")
Escreval("==================Nada é permanente, exceto a mudança.====================")

Escreval("                                                                                     ")
Escreval("                                                                                     ")
Escreval("                                                                                     ")
Escreval("                                                                                     ")
Escreval("                                                                                     ")
Escreval("                ##### ######   ##### ##      ## #####                                                   ")
Escreval("               ##     ##   ##  ##     ##    ##  ##                                    ")
Escreval("              ##  ### ######   #####   ##  ##   #####                                            ")
Escreval("               ##  ## ##   ##  ##       ####    ##                                   ")
Escreval("                ##### ##    ## #####     ##     #####                                       ")
Escreval("                                                                                     ")
Escreval("                 ##### ##### ######      ##     ##                                                        ")
Escreval("                ##     ##    ##   ##    ####    ##                                                  ")
Escreval("               ##  ### ##### ######    ##  ##   ##                                                       ")
Escreval("                ##  ## ##    ##  ##   ########  ##                                                  ")
Escreval("                 ##### ##### ##   ## ##      ## ######                                                       ")
Escreval("                                                                                     ")
Escreval("                                                                                     ")

Escreval("                                                                                     ")
FimAlgoritmo