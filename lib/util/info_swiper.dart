class InfoSwiper {
  final String imagen;
  final String titulo;
  final String descripcion;

  InfoSwiper({
    required this.imagen,
    required this.titulo,
    required this.descripcion
  });
}

List<InfoSwiper> swiperContent = [

  InfoSwiper(
    imagen: "image/cinco.png",
    titulo: "Veloro Proa Ancla",
    descripcion: "A Santa Marta puedes llegar por vía aérea desde cualquier ciudad de Colombia, y está conectada por tierra con el resto del país. Las principales rutas y tarifas son"
  ),
  InfoSwiper(
    imagen: "image/seis.png",
    titulo: "Aerea Montaña",
    descripcion: "Antes de conocer en detalle qué hacer en Santa Marta y sus alrededores, es importante que sepas que esta ciudad colonial está al norte de Colombia, en el departamento del Magdalena, en la costa Caribe y a pocos kilómetros de la Sierra Nevada."
  ),
  InfoSwiper(
    imagen: "image/siete.png",
    titulo: "Aerea Playa",
    descripcion: "Además, si estás buscando planes en Santa Marta, debes saber que su clima es cálido y ventoso durante todo el año, y su temperatura generalmente se encuentra entre 24°C y 32°C.",
  ),
  InfoSwiper(
    imagen: "image/ocho.png",
    titulo: "Velero Proa Atardecer",
    descripcion: "Consejos para reservar tu hospedaje en días de COVID19: busca alojamientos que ofrezcan cancelación gratuita, no exijan pagos por adelantado y cumplan con protocolos de bioseguridad, así en caso de que vuelva la cuarentena puedes reprogramar tu viaje sin problema.",
  )
];