
import 'package:flutter/material.dart';
import 'diccionariomonitores.dart';

class VerMonitores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final lista = datosMonitores.values.toList();

    return Scaffold(
      appBar: AppBar(title: Text("Lista de Monitores")),
      body: lista.isEmpty 
        ? Center(child: Text("No hay datos registrados aún."))
        : ListView.builder(
            itemCount: lista.length,
            itemBuilder: (context, index) {
              final monitor = lista[index];
              return Card(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                elevation: 4,
                child: ListTile(
                  leading: CircleAvatar(child: Text("${monitor.id}")),
                  title: Text(monitor.nombre, style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text(monitor.descripcion),
                  trailing: Text("\$${monitor.precio}", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
                ),
              );
            },
          ),
    );
  }
}