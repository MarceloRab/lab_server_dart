import 'dart:html';

import 'package:get_server/get_server.dart';

class Error404 extends Widget {
  //Error404(Context context, String erro) : super(context);
  Error404(Context context, String erro) : super(erro) {
    context.response..status(HttpStatus.notFound)..close();
  }
// builder: (_) =>
// context.response.status(HttpStatus.notFound).send(erro));
}
