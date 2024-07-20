class InfoSquareMobile {
  final String image;
  final String title;
  final String description;
  final int colorText;
  final int colorBackground;
  final String fontfamilytile;
  final double fontSize;
  InfoSquareMobile({
    required this.image,
    required this.title,
    required this.description,
    required this.colorBackground,
    required this.colorText,
    required this.fontfamilytile,
    required this.fontSize,
  });
}

List<InfoSquareMobile> squareMobilContent = [
  InfoSquareMobile(
    image: "assets/images/Artivela6.png",
    title: "Navega con Nosotros",
    description: "A Santa Marta puedes llegar por vía aérea desde cualquier ciudad de Colombia, y está conectada por tierra con el resto del país. Las principales rutas y tarifas son",
    colorBackground: 0xFF031F83,
    colorText: 0xFF139CE3,
    fontfamilytile:"Pacifico",
    fontSize: 22,
  ),
  InfoSquareMobile(
    image: "assets/images/Artivela5.jpeg",
    title: "Veleros Santa Marta",
    description: "",
    colorBackground: 0xFFFFFFFF,
    colorText: 0xFF031F83,
    fontfamilytile:"Ephesis",
    fontSize: 50,
  ),
  InfoSquareMobile(
    image: "assets/images/Snorkel6.jpeg",
    title: "Las Mejores Playas y los mas hermosos Paisajes",
    description: "Disfruta de las mas hermosas playas de Santa Marta y del parque Tayrona, de los mas imponentes paisajes, del mar mas azul y de la vista mas privilegiada de la sierra nevada Colombiana",
    colorBackground: 0xFF139CE3,
    colorText: 0xFF031F83,
    fontfamilytile:"Pacifico",
    fontSize: 22,
  ),
];