void main(){
Pessoa pessoa_theo = new Pessoa();
pessoa_theo.nome = 'Theo';
pessoa_theo.idade = 16;

pessoa_theo.apresenta();
}

class Pessoa {
  String? nome;
  int? idade;

  void apresenta() => {
    print('meu nome é $nome')
  };
}