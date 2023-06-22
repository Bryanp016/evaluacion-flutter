import 'avion.dart';

class Backend {
  /// Singleton pattern used here.
  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  final _aviones = [
    Avion(
      id: 631,
      matricula: 'M753',
      color: 'rojo',
      modelo: 'batman'
      
    ),
    Avion(
      id: 522,
      matricula: 'B777',
      color: 'blanco',
      modelo: 'zeus',
      
    ),
    Avion(
      id: 963,
      matricula: 'KL12',
      color: 'gris',
      modelo: 'rio',
      
    ),
    Avion(
      id: 164,
      matricula: 'J758',
      color: 'azul',
      modelo: 'macarena',
      
    ),
    Avion(
      id: 164,
      matricula: 'I865',
      color: 'rojo',
      modelo: 'vuitton',
      
    ),
    Avion(
      id: 164,
      matricula: 'S563',
      color: 'negro',
      modelo: 'zara',
      
    ),
    Avion(
      id: 164,
      matricula: 'H569',
      color: 'verde',
      modelo: 'green',
      
    ),
  ];


  List<Avion> getAvion() {
    return _aviones;
  }

  void markAvionAsRead(int id) {
    final index = _aviones.indexWhere((avion) => avion.id == id);
    _aviones[index].read = true;
  }

  void deleteAvion(int id) {
    _aviones.removeWhere((avion) => avion.id == id);
  }
}
