
class Avion {
  final int id;
  final String modelo;
  final String color;
  final String matricula;
  bool read;

  Avion ({
    required this.id,
    required this.modelo,
    required this.color,
    required this.matricula,
    this.read = false,
  });
}
