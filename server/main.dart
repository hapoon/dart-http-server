import 'dart:convert';

import 'package:angel_framework/angel_framework.dart';
import 'package:angel_framework/http.dart';

Future main() async {
  var app = Angel();
  var http = AngelHttp(app);

  app.get('/', (req,res) => res.write('Hello, world!'));
  app.get('/user/:id', (req,res) {
    var id = req.params['id'];
    var userData = {'id': id, 'name': "Bob"};
    var data = jsonEncode(userData);
    res
    ..write(data)
    ..close();
  });

  await http.startServer('localhost',8080);
}
