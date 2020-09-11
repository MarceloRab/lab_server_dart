import 'package:get_server/get_server.dart';
import 'package:lab_server_dart/data/repository/state_repository.dart';
import 'package:lab_server_dart/widgets/404_error.dart';
import 'package:lab_server_dart/widgets/pageable.dart';

class CitysFromState extends GetView {
  Repository repository = Repository();

  @override
  Widget build(Context context) {
    final cidades = repository.citysFromState(context.param('id'));
    if (cidades.isEmpty) {
      return Error404(context, 'Estado não encontrado');
      //return Text('Estado não encontrado');
    } else {
      return Pageable(context, cidades);
      //return Text('Estado não encontrado');

    }
  }
}
