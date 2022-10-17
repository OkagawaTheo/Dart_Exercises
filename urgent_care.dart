
import 'dart:io';

List<List<String>> database = [];
List<String> new_user = [];
final option = null;

void Menu() => { // menu funtion
  print(
'''

Menu:
[1] Cadastro de paciente
[2] Chamar próximo''')
};

void AddInfoList(nome,sexo,idade,urgencia) =>{ 
   // apenas adiciona no map
  new_user.add(nome),
  new_user.add(sexo),
  new_user.add(idade),
  database.add(new_user),
}; 

void main(){
    while ( option != 3  || true) {
      Menu();
      int option = int.parse(stdin.readLineSync()!);

      if ( option == 1){ //cadastro
      
      print('Nome: ');
      String nome = stdin.readLineSync()!;
      
      print('Sexo(M/F):');
      String sexo = stdin.readLineSync()!.toLowerCase();

    
      print(sexo);
      print('Idade(números): ');
      String idade = stdin.readLineSync()!;

      print('Grau de urgência: ');
      String urgencia = stdin.readLineSync()!;

      AddInfoList(nome, sexo, idade, urgencia); // adiciona na new_user list
    } 
    else if (option == 2){
      print('Próximo paciente:${new_user[0]}');
      new_user.remove(0);
    }
  }   
    
}
