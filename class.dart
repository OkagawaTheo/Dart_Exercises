void main(){
  Pessoa pessoa1 = new Pessoa('Theo', null); // instanciar por esses parâmetros
  // pessoa1.nome = 'Marcos';
  //pessoa1.idade = 12; 
  pessoa1.ApresentarNome();
}


class Pessoa { // nome + idade e apresentar
  String? nome;
  int? idade;

  Pessoa(this.nome, this.idade); // obrig. as das duas var

  void ApresentarNome() => {

    print('Meu nome é $nome e eu tenho $idade anos.') // nome que está sendo atribuido a pessoa1
  };
}