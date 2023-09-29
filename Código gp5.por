//Verifique se os "numeros" sao Primos; e se os numeros do "multiplicador" sao divisi­veis por 3.

programa {

  inclua biblioteca Util --> u

  funcao inicio() {
    inteiro numeros[10] = {2, 3, 6, 7, 11, 12, 17, 19, 23, 29}
    inteiro multiplicador[10] = {3, 6, 10, 12, 15, 18, 21, 26, 27, 31}
    

    para(inteiro i = 0; i < 10; i++){
        se(ehPrimo(numeros[i]) == falso){
          escreva(numeros[i]," Nao eh um numero primo.\n")
          
        }senao{
          escreva(numeros[i], " Eh um numero primo.\n")
        }
      
    }

   //u.aguarde(5000) 
   
    para(inteiro i=0; i < 10; i++){
        se(multiplicador[i] % 3 == 0){
          escreva(multiplicador[i], " Eh divisivel por 3!\n")
        }senao{
          escreva("Ops ", multiplicador[i], " Nao eh divisivel por 3.\n")
        }
    }
  }

  funcao logico ehPrimo(inteiro num){
    inteiro quantDivisores = 0

    para(inteiro i = 1; i <= num; i++){
      se(ehDivisaoExata(num, i)){
             quantDivisores++
         }
    }
    se(quantDivisores <= 2) {
         retorne verdadeiro
     } senao {
          retorne falso
     }
  }

  funcao logico ehDivisaoExata(inteiro dividendo, inteiro divisor) {
     retorne (dividendo % divisor == 0)
 }
}