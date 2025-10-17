import 'dart:io';

void main(){
    stdout.write('Entre com um valor: ');
    String? num = stdin.readLineSync();

    if (num != null && num.isNotEmpty){
        int numero = int.parse(num);

        print('-' * 50);
        if(numero % 2 == 0){
            print('O numero digitado foi ${numero}, ele e par');
        }else{
            print('O numero digitado foi ${numero}, ele e impar');
        }
    }else{
       print('-' * 50);
       print('Valor em branco, digite um valor para verificar se e par ou impar.');  
    }
}