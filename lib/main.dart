import 'package:flutter/material.dart';
import 'package:multi_sms_app_chapitec/src/Pages/initial_view.dart';
import 'package:multi_sms_app_chapitec/src/utils/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: InitialView.name,
      routes: Rutas.nameRutes,
    );
  }
} 