import 'package:flutter/material.dart';
import 'inicio.dart';
import 'capturamonitores.dart';
import 'vermonitores.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Monitores',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      // Definición de Rutas Nombradas
      initialRoute: '/',
      routes: {
        '/': (context) => Inicio(),
        '/captura': (context) => CapturaMonitores(),
        '/ver': (context) => VerMonitores(),
      },
    );
  }
}