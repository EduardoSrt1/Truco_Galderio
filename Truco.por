programa {
  inclua biblioteca Util --> u
  cadeia cartas[40]
  inteiro mao1[3]
  inteiro mao2[3]
  inteiro aux
  inteiro confira
  inteiro valor
  inteiro resultado
  funcao inicio() {
   cartas[0] = "Ás de paus"
   cartas[1] = "2 de paus"
   cartas[2] = "3 de paus"
   cartas[3] = "4 de paus"
   cartas[4] = "5 de paus"
   cartas[5] = "6 de paus"
   cartas[6] = "7 de paus"
   cartas[7] = "Valete de paus"
   cartas[8] = "Cavalo de paus"
   cartas[9] = "Rei de paus"
   cartas[10] = "Ás de copas"
   cartas[11] = "2 de copas"
   cartas[12] = "3 de copas"
   cartas[13] = "4 de copas"
   cartas[14] = "5 de copas"
   cartas[15] = "6 de copas"
   cartas[16] = "7 de copas"
   cartas[17] = "Valete de copas"
   cartas[18] = "Cavalo de copas"
   cartas[19] = "Rei de copas"
   cartas[20] = "Ás de espadas"
   cartas[21] = "2 de espadas"
   cartas[22] = "3 de espadas"
   cartas[23] = "4 de espadas"
   cartas[24] = "5 de espadas"
   cartas[25] = "6 de espadas"
   cartas[26] = "7 de espadas"
   cartas[27] = "Valete de espadas"
   cartas[28] = "Cavalo de espadas"
   cartas[29] = "Rei de espadas"
   cartas[30] = "Ás de ouros"
   cartas[31] = "2 de ouros"
   cartas[32] = "3 de ouros"
   cartas[33] = "4 de ouros"
   cartas[34] = "5 de ouros"
   cartas[35] = "6 de ouros"
   cartas[36] = "7 de ouros"
   cartas[37] = "Valete de ouros"
   cartas[38] = "Cavalo de ouros"
   cartas[39] = "Rei de ouros"
   sorteio()
   escreva (cartas[mao1[0]],"\n", cartas[mao1[1]],"\n", cartas[mao1[2]],"\n\n", cartas[mao2[0]],"\n", cartas[mao2[1]],"\n", cartas[mao2[2]])
   escreva ("\n")
   escreva ("\n")
   compare(confira, resultado)
  }
  funcao sorteio(){
    para (inteiro i = 0; i < 6; i++){
      faca{
        aux = u.sorteia(0, 39)
      }enquanto (aux == mao1[0] ou aux == mao1[1] ou aux == mao1[2] ou aux == mao2[0] ou aux == mao2[1] ou aux == mao2[2])

      se (i<3){
        mao1[i] = aux
      } senao {
        mao2[i - 3] = aux
      }
    }
  }
  funcao inteiro valor(inteiro confira){
    se (confira == 0){
      retorne 39
    }senao se (confira == 1 ou confira == 11 ou confira == 21 ou confira == 31){
      retorne 36
    }senao se (confira == 2 ou confira == 12 ou confira == 22 ou confira == 32 ou confira == 36){
      retorne 37
    }senao se (confira == 3 ou confira == 13 ou confira == 23 ou confira == 33){
      retorne 28
    }senao se (confira == 4 ou confira == 14 ou confira == 24 ou confira == 34){
      retorne 29
    }senao se (confira == 5 ou confira == 15 ou confira == 25 ou confira == 35){
      retorne 30
    }senao se (confira == 6 ou confira == 16){
      retorne 31
    }senao se (confira == 7 ou confira == 17 ou confira == 27 ou confira == 37){
      retorne 32
    }senao se (confira == 8 ou confira == 18 ou confira == 28 ou confira == 38){
      retorne 33
     }senao se (confira == 9 ou confira == 19 ou confira == 29 ou confira == 39){
      retorne 34
    }senao se (confira == 10 ou confira == 30){
      retorne 35
    }senao se (confira == 20){
      retorne 40
    }senao{
      retorne 38
    }
  }

  funcao compare(inteiro confira, inteiro resultado){
    confira = mao1[0]
    resultado = valor(confira)
    confira = mao2[0]
    se (resultado > valor(confira)){
      escreva("jogador 1 ganhou")
    } senao se(resultado == valor(confira)){
      escreva("empate")
    } senao{
      escreva("jogador 2 ganhou")
    }
  }
}