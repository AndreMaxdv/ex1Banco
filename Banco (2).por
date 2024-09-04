programa {
  funcao inicio() {
    cadeia senha = "feijao11"
    cadeia pswd
    real saldo = 0
    real saque, deposito
    cadeia controle
    inteiro menu
    cadeia extrato = ""
    real investimento , rendimento
    inteiro meses
    enquanto(menu != 0){
      escreva ("\nDigite sua senha: ")
        leia(pswd)
        se(pswd == senha){
      escreva("|----------MENU----------|\n")
      escreva("| 1-SALDO  R$", saldo, "           |\n")
      escreva("| 2-SAQUE                |\n")
      escreva("| 3-DEPOSITO             |\n")
      escreva("| 4-EXTRATO              |\n")
      escreva("| 5-INVESTIMENTO         |\n")
      escreva("| 0-SAIR                 |\n")
      escreva("|------------------------|\n")
      escreva("| ESCOLHA -> ")
      leia(menu)
      limpa()
      }
      senao{
        escreva("Senha invalida!! Tente novamente!!!")
      }
      escolha(menu){
        caso 1:
        escreva ("Digite sua senha: ")
        leia(pswd)
        se(pswd == senha){
        escreva("Saldo = ", saldo, "\n")
        }
        senao{
          escreva("Senha invalida!! Tente novamente!!!")
        }
        pare
        caso 2:
        escreva ("Digite sua senha: ")
        leia(pswd)
        se(pswd == senha){
          escreva("Digite o valor para sacar: ")
          leia(saque)
          enquanto(saque < 0){
          escreva("Valor invalido digite novamente: ")
          leia(saque)
          
        }
         se(saque > saldo){
          escreva("Não autorizado!\n")
          escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        }
        senao{
          saldo = saldo - saque
          extrato = extrato + "SAQUE ------------ R$" + saque + "\n"
          escreva("Saque realizado com sucesso!\n")
          escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        }

        }
        senao{
          escreva("Senha invalida\n")
        }
        pare
        caso 3:
        escreva ("Digite sua senha: ")
        leia(pswd)
        se(pswd == senha){
        escreva("Digite o valor para depositar: ")
        leia(deposito)
        enquanto(deposito<0){
          escreva("Valor invalido digite novamente: ")
          leia(deposito)
        }}
        saldo = saldo + deposito
        extrato = extrato + "DEPOSITO ------------ R$" + deposito + "\n"
        escreva("Deposito realizado com sucesso!\n")
        escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        pare
        caso 4:
        escreva ("Digite sua senha: ")
        leia(pswd)
        se(pswd == senha){
        escreva(extrato)
         escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()}
        pare

        caso 5:
        //investimento
        escreva("Digite o valor que deseja investir:\n")
        leia(investimento)
        se(investimento > saldo){
          escreva("Saldo insuficiente:\n")
        }
        senao{
          escreva("Digite aquantidade de meses que deseja investir: ")
          leia(meses)
          para(inteiro contador = 0 ;contador < meses; contador++)
        }

      }
    }
  }
}
