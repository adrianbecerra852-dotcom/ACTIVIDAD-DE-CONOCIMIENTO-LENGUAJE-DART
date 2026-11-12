void main() {
  ({String titulo, String autor, int anio}) libro = (
    titulo: 'Cien años de soledad',
    autor: 'Gabriel García Márquez',
    anio: 1967,
  );

  print('Título: ${libro.titulo}');
  print('Autor: ${libro.autor}');
  print('Año: ${libro.anio}');
}
