import 'dart:io';

void IfTrue(variable,command, command2, sexo_var){
  if (variable != command || variable != command2){
    
  } 
}

void main(){
  while (true){
    print('Sexo(M/F):');
    String sexo = stdin.readLineSync()!.toLowerCase();
    IfTrue(sexo, 'm','f',sexo);
  }
  
}