import 'diccionariomonitores.dart';
import 'clasemonitores.dart';

class AgenteGuardado {
  static void guardarEnDiccionario(String nombre, double precio, String desc) {
    // Creamos la instancia con el ID actual
    Monitor nuevoMonitor = Monitor(
      id: contadorId,
      nombre: nombre,
      precio: precio,
      descripcion: desc,
    );

    // Guardamos en el diccionario usando el ID como llave
    datosMonitores[contadorId] = nuevoMonitor;

    // Incrementamos para el siguiente registro
    contadorId++;
  }
}