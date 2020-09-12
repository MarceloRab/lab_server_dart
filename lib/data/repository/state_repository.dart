import 'dart:convert';
import 'dart:io';

import 'package:lab_server_dart/data/model/country.dart';
import 'package:lab_server_dart/data/model/state.dart';
import 'package:path/path.dart';

class Repository {
  Country brasil;

  Repository() {
    final scriptFile = Platform.script.toFilePath();
    final data = File(join(dirname(scriptFile), '../assets/brasil.json'));
    brasil = Country.fromJson(jsonDecode(data.readAsStringSync()));
  }

  List<StateMin> findAllStates() {
    var stateMin = <StateMin>[];
    brasil.estados.forEach((state) {
      stateMin.add(StateMin(nome: state.nome, sigla: state.sigla));
    });
    return stateMin;
  }

  List<String> citysFromState(String sigla) {



    var state = brasil.estados.firstWhere(
        (s) => s.sigla.toLowerCase() == sigla.toLowerCase(),
        orElse: () => null);

    print('TESTE state $state');

    return state == null ? [] : state.cidades;
  }
}
