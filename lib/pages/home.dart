import 'package:get_server/get_server.dart';

class Home2 extends GetView {
  @override
  Widget build(Context context) {
    return Text('Bem vindo so Server Dart');
  }
}

class HomePage extends GetView {
  @override
  Widget build(Context context) {
    return Html('''  
<!DOCTYPE html>
  <html>
    <head>
      <title>Home</title>
    </head>
    <body> 
      <h1>Api funcionado</h1>
    <p> Essa é a home </p>
    </body>
</html>
    ''');
  }
}
