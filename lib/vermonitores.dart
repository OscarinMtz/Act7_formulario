import 'package:flutter/material.dart';
import 'diccionariomonitores.dart';

class VerMonitores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final lista = datosMonitores.values.toList();
    return Scaffold(
      appBar: AppBar(title: Text("Inventario")),
      body: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(lista[i].nombre),
          subtitle: Text(lista[i].descripcion),
          trailing: Text("\$${lista[i].precio}"),
          leading: CircleAvatar(child: Text("${lista[i].id}")),
        ),
      ),
    );
  }
}