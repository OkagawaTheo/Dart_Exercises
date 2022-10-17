

void main() {
  Pessoa pessoa1 = new Pessoa('Theo', 16); // instanciar por esses parâmetros
  // pessoa1.nome = 'Marcos';
  // pessoa1.idade = 12; 
  pessoa1.idadeEnv = pessoa1.idade;
  pessoa1.Envelhecer();
  pessoa1.ApresentarNome();
  
}


class Pessoa { // nome + idade e apresentar
  String? nome;
  int? idade;
  int? idadeEnv;

  Pessoa(this.nome, this.idade); // obrig. as das duas var

void Envelhecer () => {
  idadeEnv = this.idade! + 1, //adiciona "idade" + 1
  };

  void ApresentarNome() => {
    print('Meu nome é ${this.nome} e eu tenho ${this.idade} anos. Ano que vem farei ${this.idadeEnv} ') // nome que está sendo atribuido a pessoa1
  };
}