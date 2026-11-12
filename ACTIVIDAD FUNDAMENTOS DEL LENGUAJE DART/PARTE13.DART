void main() {
  String palabra = 'programar';

  print('Palabra: $palabra');
  print('Longitud: ${palabra.length}');
  print('Primer carácter: ${palabra[0]}');

  if (palabra.length >= 3) {
    print(
      'Últimos 3 caracteres: '
      '${palabra.substring(palabra.length - 3)}',
    );
  } else {
    print('La palabra tiene menos de 3 caracteres.');
  }

  String resultado =
      palabra.length > 5 ? palabra.toUpperCase() : palabra;

  print('Resultado del ternario: $resultado');
}
