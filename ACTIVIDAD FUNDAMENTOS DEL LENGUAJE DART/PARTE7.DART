void main() {
  Set<String> ciudades = {'Medellín', 'Bogotá', 'Cali'};

  print('Inicial: $ciudades');

  ciudades.add('Popayán');
  print('Después de agregar: $ciudades');

  ciudades.add('Medellín');
  print('Al intentar repetir Medellín: $ciudades');

  ciudades.remove('Bogotá');
  print('Después de eliminar: $ciudades');
}
