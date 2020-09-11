// O pais bo caso o brasil

import 'package:lab_server_dart/data/model/state.dart';

class Country {
  // A lista de estados do pais
  List<State> estados;

  // construtor
  Country({this.estados});

  // Construtor de pais apartir do json
  Country.fromJson(Map<String, dynamic> json) {
    if (json['estados'] != null) {
      estados = <State>[];
      json['estados'].forEach((v) {
        estados.add(State.fromJson(v));
      });
    }
  }
}
