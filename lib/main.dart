import 'package:flutter/material.dart';
import 'inicio.dart';
import 'capturamonitores.dart';
import 'vermonitores.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: '/',
  routes: {
    '/': (context) => Inicio(),
    '/captura': (context) => CapturaMonitores(),
    '/ver': (context) => VerMonitores(),
  },
));