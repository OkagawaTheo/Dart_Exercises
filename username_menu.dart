// menu em dart

import "dart:io";

void main() {
  List<String> usernames = [];
  String? option = 'x';

  // le a opção
  while (option != '5') {
    print('''MENU:
O que deseja fazer?
[1] Gravar novo username
[2] Ler todos os usernames
[3] Editar username existente
[4] Deletar algum username existente
[5] Sair''');

    option = stdin.readLineSync()!;

    if (option == '1') {
      print('Qual nome deseja inserir?');
      String new_name = stdin.readLineSync()!;
      usernames.add(new_name);
      print('Adicionado!');
    } else if (option == '2') {
      print(usernames);
    } else if (option == '3') {
      try {
        print('Qual nome deseja editar? ');
        String edit_name = stdin.readLineSync()!; // pergunta o nome
        int index = usernames.indexOf(edit_name); // procura o nome na lista
        

        
        print('Insira um novo nome: ');
        String edited_name = stdin.readLineSync()!; // novo nome editado

        usernames[index] = edited_name;
        print('Alterado!');
      } catch (e) {
        print('Nome não encontrado.');
      }
    } else if (option == '4') {
      try {
        print('Qual nome quer deletar? ');
        String delete_name = stdin.readLineSync()!;
        usernames.remove(delete_name);
        print('Nome deletado.');
      } catch (e) {
        print('Nome não encontrado.');
      }
    } else if (option == 5) {
      print('Obrigado por usar');
    }
    }
  }

