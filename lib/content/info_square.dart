class InfoSquare {
  final String imagen;
  final String title;
  final String descripcion;

  InfoSquare(
      {required this.imagen, required this.title, required this.descripcion});
}

List<InfoSquare> squareContent = [
  InfoSquare(
      imagen: "assets/images/Artivela6.png",
      title: "Navega con Nosotros",
      descripcion:
          "A Santa Marta puedes llegar por vía aérea desde cualquier ciudad de Colombia, y está conectada por tierra con el resto del país. Las principales rutas y tarifas son"),
  InfoSquare(
    imagen: "assets/images/Artivela5.jpeg",
    title: "TUTOUR COLOMBIA",
    descripcion: "",
  ),
  InfoSquare(
    imagen: "assets/images/Snorkel6.jpeg",
    title: "Las Mejores Playas y los mas hermosos Paisajes",
    descripcion:
        "Disfruta de las mas hermosas playas de Santa Marta y del parque Tayrona, de los mas imponentes paisajes, del mar mas azul y de la vista mas privilegiada de la sierra nevada Colombiana",
  ),
];
