import 'package:flutter/material.dart';
import 'guardardatosdiccionario.dart';

class CapturaMonitores extends StatefulWidget {
  @override
  _CapturaMonitoresState createState() => _CapturaMonitoresState();
}

class _CapturaMonitoresState extends State<CapturaMonitores> {
  final _nombreCtrl = TextEditingController();
  final _precioCtrl = TextEditingController();
  final _descCtrl = TextEditingController();

  void _procesarGuardado() {
    if (_nombreCtrl.text.isEmpty || _precioCtrl.text.isEmpty) return;

    AgenteGuardado.guardarEnDiccionario(
      _nombreCtrl.text,
      double.parse(_precioCtrl.text),
      _descCtrl.text,
    );

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("¡Monitor guardado con éxito!"), backgroundColor: Colors.green),
    );

    _nombreCtrl.clear();
    _precioCtrl.clear();
    _descCtrl.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nuevo Monitor")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            _crearInput("Nombre del Monitor", Icons.monitor, _nombreCtrl),
            _crearInput("Precio", Icons.attach_money, _precioCtrl, teclado: TextInputType.number),
            _crearInput("Descripción", Icons.description, _descCtrl, maxLines: 3),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(padding: EdgeInsets.all(15), backgroundColor: Colors.blue.shade700),
              onPressed: _procesarGuardado,
              child: Text("GUARDAR DATOS", style: TextStyle(color: Colors.white, fontSize: 16)),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearInput(String label, IconData icono, TextEditingController ctrl, {TextInputType teclado = TextInputType.text, int maxLines = 1}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: TextField(
        controller: ctrl,
        keyboardType: teclado,
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icono),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }
}