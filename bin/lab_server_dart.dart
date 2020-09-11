import 'package:get_server/get_server.dart';
import 'package:lab_server_dart/routes/app_pages.dart';

void main(List<String> arguments) {
  runApp(GetServer(
    getPages: AppPages.routes,
    /*log: (String value, {bool isError = false}) {
      print(value);
    },*/
  ));
}
