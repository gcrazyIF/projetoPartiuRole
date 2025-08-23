import 'package:flutter/widgets.dart';

class CardsPacotesAtb {
  late String imageLink;
  late String nomePacote;
  late String dataEstadia;
  late double nota;
  late String preco;

  CardsPacotesAtb({
    required this.imageLink,
    required this.nomePacote,
    required this.dataEstadia,
    required this.nota,
    required this.preco,
  });

  CardsPacotesAtb.fromJson(Map<String, dynamic> json){
    imageLink = json['imageLink'];
    nomePacote = json['nomePacote'];
    dataEstadia = json['dataEstadia'];
    nota = json['nota'];
    preco = json['preco'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageLink'] = this.imageLink;
    data['nomePacote'] = this.nomePacote;
    data['dataEstadia'] = this.dataEstadia;
    data['nota'] = this.nota;
    data['preco'] = this.preco;
    return data;
  }
}