Map<String, num> analizarNumeros(List<num> numeros) {
  if (numeros.isEmpty) {
    throw ArgumentError('La lista no puede estar vacía.');
  }

  num mayor = numeros.first;
  num menor = numeros.first;

  for (num numero in numeros) {
    if (numero > mayor) {
      mayor = numero;
    }

    if (numero < menor) {
      menor = numero;
    }
  }

  return {
    'cantidad': numeros.length,
    'mayor': mayor,
    'menor': menor,
  };
}

void main() {
  List<num> numeros = [8, 3, 15, 1, 10];

  Map<String, num> resultado = analizarNumeros(numeros);

  print(resultado);
}