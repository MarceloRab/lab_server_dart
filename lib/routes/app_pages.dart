import 'package:get_server/get_server.dart';
import 'package:lab_server_dart/pages/all_states.dart';
import 'package:lab_server_dart/pages/cidades_estado.dart';
import 'package:lab_server_dart/pages/home.dart';

part 'app_routes.dart';

class AppPages {
  //static const INITIAL = Routes.HOME;

  static final routes = [
    //GetPage(name: Routes.HOME, page: Home2()),
    GetPage(name: '/', page: Home2()),
    GetPage(name: Routes.STATES, page: AllState()),
    GetPage(name: Routes.CITYS, page: CitysFromState()),
    // this not work
    //GetPage(name: '/*', page: PageNotFoud()),
  ];
}
