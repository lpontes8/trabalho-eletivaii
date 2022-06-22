import 'dart:ffi';

class Evento {
  String id;
  String nome;
  String imageUrl;
  String descricao;
  int dia;
  int mes;
  int ano;
  int hora;
  int minuto;
  int preco;
  String local;

  Evento({
    required this.id,
    required this.nome,
    required this.imageUrl,
    required this.descricao,
    required this.dia,
    required this.mes,
    required this.ano,
    required this.hora,
    required this.minuto,
    required this.preco,
    required this.local,
  });
}
  var eventos = [
    Evento(
      id: "evento1",
      nome: "Festa Junina de Campos",
      imageUrl:"assets/images/festajunina.jpeg",
      descricao:"A festa junina mais aguardada da região.",
      dia: 08,
      mes: 08,
      ano: 2022,
      hora: 19,
      minuto: 00,
      preco: 20,
      local: "Rua Lucas de Almeida, Bairro Cidade Bela, n°55"
    ),
    Evento(
        id: "evento2",
        nome: "Show de José e Maria",
        imageUrl:"assets/images/festa.jpg",
        descricao:"Os maiores sucessos da música brasileira nas vozes de José e Maria.",
        dia: 09,
        mes: 09,
        ano: 2022,
        hora: 22,
        minuto: 00,
        preco: 80,
        local: "Rua do Gás, Parque João Maria, n°66"
    ),
    Evento(
        id: "evento3",
        nome: "Calourada da Medicina",
        imageUrl:"assets/images/calourada.jpg",
        descricao:"A melhor calourada de Campos.",
        dia: 08,
        mes: 08,
        ano: 2022,
        hora: 23,
        minuto: 00,
        preco: 60,
        local: "Parque Municiapal de Eventos: Rua 7, Bairro Cidade Bonita, n°99"
    ),
  ];

