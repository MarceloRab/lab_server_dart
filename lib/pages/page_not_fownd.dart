import 'package:get_server/get_server.dart';
import 'package:lab_server_dart/widgets/404_error.dart';

class PageNotFound extends GetView {
  @override
  Widget build(Context context) {
    return Error404(context, 'Url não encontrada');
    //return context.pageNotFound();
  }
}
