import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade900, Colors.blue.shade500],
            begin: Alignment.topCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.desktop_windows, size: 80, color: Colors.white),
            SizedBox(height: 20),
            Text("Monitor Manager v1.0", 
                 style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 50),
            _botonMenu(context, "Capturar Monitor", Icons.add_circle, '/captura'),
            SizedBox(height: 20),
            _botonMenu(context, "Ver Inventario", Icons.list_alt, '/ver'),
          ],
        ),
      ),
    );
  }

  Widget _botonMenu(BuildContext context, String texto, IconData icono, String ruta) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue.shade900,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      onPressed: () => Navigator.pushNamed(context, ruta),
      icon: Icon(icono),
      label: Text(texto, style: TextStyle(fontSize: 18)),
    );
  }
}