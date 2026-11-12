void main() {
  List<double> notas = [4.0, 3.5, 2.8, 4.5, 3.2];

  double suma = 0;

  print('Notas:');
  for (double nota in notas) {
    print(nota);
    suma += nota;
  }

  double promedio = suma / notas.length;

  print('Promedio: ${promedio.toStringAsFixed(2)}');

  if (promedio >= 3.0) {
    print('El aprendiz aprueba.');
  } else {
    print('El aprendiz no aprueba.');
  }
}
