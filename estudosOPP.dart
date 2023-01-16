void Repeat(num) {
  for (num = 1; num < 11; num++) {
    print('O número é $num');
  }
}

void Tabuada(n1, n2) {
  for (n1; n1 <= 10; n1++) {
    for (n2; n2 <= 10; n2++) {
      print('$n1 x $n2 = ${n1 * n2}');
    }
  }
}

void main() {
  // Repeat(num);
  // Tabuada(3, 1);

  // Celular Theo = Celular('Preto', 4, 30.0, 0.6); // define as caracteristicas

  // print(Theo.toString());
  // print(Theo.valorCel(800));

  // Carro gol = Carro('bola');
  // print(gol.modelo);
  // print(gol._valor);
  Filho Theo = Filho();
  print(Theo.olhoCor()); // herdei da class "pai" a cor dos olhos
  PagamentoPix pix = PagamentoPix();
  pix.Pagar(); // retorna "pago com pix" 

  PagamentoCartao cartao = PagamentoCartao();
  cartao.Pagar(); // retorna "pago com cartao" que vem da class "pagamento"
}

class Celular {
  final String cor; //final nao altera no futuro
  final int nucleos;
  final double tamanho;
  final double peso;

  Celular(this.cor, this.nucleos, this.tamanho, this.peso);

  String toString() {
    return 'cor: $cor, nucleos: $nucleos';
  }

  double valorCel(double valor) {
    return valor * 2;
  }
}

class Carro {
  String modelo;
  int _valor =
      1000; //declara uma variavel que só pode ser acessada na class carro (por causa do _)
  int get ValorCarro => _valor; // get deixa acessivel para outras classes
  set MudarValor(int valor) => _valor =
      valor; //cria uma "variavel publica" que possa ser mudada de valor
  Carro(this.modelo);
}

abstract class Pai {
  String nome();
  String olhoCor();
}

class Filho extends Pai {
  String nome() {
    return 'Theo';
  }

  String olhoCor() {
    return 'Verde';
  }
}

abstract class Pagamento {
  void Pagar();
}

class PagamentoPix implements Pagamento {
  void Pagar() {
    print('pago com pix');
  }
}

class PagamentoCartao implements Pagamento {
  void Pagar() {
    print('Pago com cartão');
  }
}
