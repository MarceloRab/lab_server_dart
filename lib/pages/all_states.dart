import 'package:get_server/get_server.dart';
import 'package:lab_server_dart/data/repository/state_repository.dart';

class AllState extends GetView {
  Repository repository = Repository();

  @override
  Json build(Context context) {
    return Json(repository.findAllStates());
  }
}
