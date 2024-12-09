class InfoSwiper {
  final String imagen;
  final String title;
  final String descripcion;

  InfoSwiper(
      {required this.imagen, required this.title, required this.descripcion});
}

List<InfoSwiper> swiperContent = [
  InfoSwiper(
      imagen: "assets/images/snorkel2.jpeg",
      title: "Tayrona, snorkel & playa \nEl Remanso, Granate y Bahía Concha",
      descripcion:
          "Nos encontraremos a las 9.30 am en la estación chárter de la Marina Internacional de Santa Marta, donde podrás tomar fotos con un espectacular paisaje de fondo mientras esperamos a todos nuestros compañeros de experiencia. A las 10am abordaremos nuestra lancha, la Tranquila, rumbo a nuestro destino en el Parque Tayrona. La navegación hasta nuestra primera parada tomará 10 min. Anclaremos en el Remanso, donde haremos snorkel por 40 minutos aproximadamente, Después volvemos a la lancha para llegar a nuestra segunda parada, Granate el mejor spot de snorkel en todo el parque Tayrona, donde podrás ver si tenemos suerte una pareja de tortugas que viven ahí entre otras especies. Navegaremos hasta Bahía Concha a relajarnos y disfrutar de la bahía más extensa del parque. Nuestros compañeros de experiencia pueden elegir entre nadar, caminar por la playa, hacer snorkel o simplemente asolearse. Mientras nos preparamos para almorzar un delicioso almuerzo a base de pescado fresco. A las 4:15 pm comenzaremos nuestro regreso a Santa Marta, pasaremos por la bahía de Taganga con muy buena música para celebrar que viniste a pasar el día con nosotros. Queremos ver el atardecer contigo abordo así que regresamos sin apuro. La tarde es de fiesta. \n9:30am a 5:00pm"),
  InfoSwiper(
      imagen: "assets/images/Artivela8.jpeg",
      title: "Tayrona por Mar \nCinto, Playa Cristal y Bahía Concha",
      descripcion:
          "Nos reuniremos a las 8:30 am en la Marina Internacional de Santa Marta. Desde allí saldremos en una lancha hacia el final del Parque Tayrona, específicamente a la Bahía de Cinto. Durante este recorrido por mar de 1 hora aproximadamente podrás ver las bahías del Tayrona desde el mar con la Sierra Nevada en el fondo. Al llegar a cinto, podremos caminar por una playa paradisíaca, tomar sol ó caretear. Puedes visitar la madre vieja, una desembocadura de río llena de cangrejos y otros animales. A las 12 am empezaremos el recorrido de vuelta y pasáremos por Playa Cristal, muy famosa por sus aguas transparentes, donde disfrutaremos de un delicioso almuerzo a la orilla del mar. Nos bañaremos. A las 3 pm volveremos a la lancha para conocer Bahía Concha. Disfrutaremos del mar y de su arena blanca. A las 4.30 emprenderemos nuestro regreso a la Marina Internacional de Santa Marta. \n8:30am a 5:00pm"),
  InfoSwiper(
    imagen: "assets/images/Artivela4.jpeg",
    title: "Pasadia enVelero",
    descripcion:
        "\$250.000 p/p Incluye: Entrada a la marina, seguro, snacks, bebidas no alcoholicas, almuerzo, paddleboard y equipo de snorkel",
  ),
  InfoSwiper(
    imagen: "assets/images/Artivela4.jpeg",
    title: "Navega en Catamarán \nBahía Concha",
    descripcion:
        "Navegar por el Tayrona es una experiencia única que nunca olvidarás. Podrás admirar las montañas costeras más altas del mundo desde el mar. Mar donde los ríos que provienen de los picos nevados de la Sierra desembocan en el Mar Caribe. Nos encontraremos a las 9:00 am en la Marina Internacional de Santa Marta. A las 9:30 zarparemos rumbo a nuestro destino. Tan pronto salgamos de la Bahía de Santa Marta entraremos en la Bahía de Taganga, pueblo de pescadores donde el turismo se ha fusionado con los locales. Seguiremos nuestra navegación entrando al Parque Tayrona y pasaremos por la Bahía de Granate donde se puede observar la faena de pesca artesanal y donde las escuelas de buceo suelen ir. Pasaremos Isla aguja y playa Brava para entrar a nuestro destino en Bahía Concha, donde nadaremos, remaremos, practicaremos snorkel o simplemente descansaremos. Deleitarnos nuestro increíble almuerzo a base de pescado muy fresco (Ceviche) (hay opción para vegetarianos) A las 3:30pm iniciaremos el regreso a la Marina. Esta vez lo haremos navegando a vela. Estaremos de regreso alrededor de las 4:30pm.",
  ),
  InfoSwiper(
    imagen: "assets/images/Snorlkel4.jpeg",
    title: "Atardecer Navegando a Vela en Catamarán",
    descripcion:
        "Nos encontraremos a las 4:30 pm en la Marina Internacional de Santa Marta, donde comenzará nuestra aventura. A las 5:00 pm, zarparemos hacia El Rodadero, pasando por las encantadoras playas de Lipe, Santo Cristo, el Hoyo e Inca Inca. En el trayecto, podrás deleitarte con el relajante sonido del mar desde la proa o disfrutar de música desde el cockpit. A medida que avanzamos, descubrirás paisajes deslumbrantes y una atmósfera vibrante llena de sonidos alegres que te acompañarán durante toda la travesía. Con una refrescante bebida en mano, contemplaremos juntos la espectacular puesta de sol, mientras escuchamos la música que nos inspire y nos conecte. Navegaremos sin prisas, saboreando cada momento de esta experiencia única e inolvidable. Aspectos destacados: Canta y baila si lo deseas; lo importante es que disfrutes cada instante y agregues un toque especial a tu noche. A bordo de nuestro barco, te sentirás como en casa, con un ambiente acogedor y lleno de buenas vibras. ¡Ven y vive una noche mágica con nosotros! Itinerario Atardecer navegando a vela encatamarán \n4:30pm a 8:00pm",
  ),
  InfoSwiper(
    imagen: "assets/images/Snorlkel4.jpeg",
    title: "Snorkel en compañía de locales",
    descripcion:
        "Itinerario: Nos encontramos en la Marina internacional de Santa Marta a las 8:00am o 2:00pm (tenemos dos salidas al día) para abordar nuestra lancha de 18 pies por aproximadamente 5 minutos con destino a nuestra primera parada el punta Betín, donde haremos snorkel, aquí observaremos diferentes especies de peces de colores como el Ángel Reina, pez loro y con suerte algunos pulpos después de unas sesión de 30 minutos subiremos a a la lancha para ir a nuestro segundo punto el famoso morro de Santa Marta donde tendremos otra sesión de careteo de 30 minutos observando gran variedad de corales, como coral cerebro entre otros. subiremos nuevamente a nuestra lancha para regresar a la Marina, donde conversaremos acerca de la vida marina, tomaremos un snack y un delicioso smoothie o jugo de fruta de tu preferencia. \n8:00 am a 10:00 am y 2:00pm a 4:00pm",
  ),
  InfoSwiper(
    imagen: "assets/images/Artivela3.jpeg",
    title: "Amanecer de pesca Artesanal",
    descripcion:
        "Itinerario: Nos encontraremos a las 5:00 am en la entrada de la Marina Internacional de Santa Marta, donde nuestro día comienza con el amanecercaribeño como fondo. Subiremos a nuestra lancha de 27 pies, ideal para la jornada de pesca que nos espera. Una vez a bordo, zarparemos hacia nuestra primera parada, a unos 40 minutos de distancia. Con el equipo listo, lanzaremos el palangre previamente preparado al mar, mientras el sol se alza sobre el horizonte. Pero aquí no termina la acción: mientras el palangre hace su trabajo, aprovecharemos el tiempo troleando con nuestras cañas de pescar durante aproximadamente una hora, en busca de más pesca. Después, regresaremos a la primera parada para recoger el palangre. Este es un momento que requiere paciencia, pero la recompensa bien puede ser un pargo, un mero, un medegral, o incluso un atún. Recuerda, la pesca es una mezcla de paciencia y un toque de suerte. Durante la travesía, disfrutaremos de un delicioso café de la Sierra Nevada, uno sándwiches y frutas frescas locales. Además, compartimos la pesca del día con la tripulación, contribuyendo así a sus hogares y haciendo de esta experiencia algo aún más especial. Alrededor de la 1:00 pm, regresaremos a la Marina, pero antes haremos una parada para un refrescante baño en las aguas cristalinas del Caribe.",
  ),
  InfoSwiper(
      imagen: "assets/images/Landing2.jpeg",
      title: "Cultura y diversión: Don Diego",
      descripcion:
          "Itinerario: El transporte los buscará para salir de Santa Marta entre 7:00 y 8 am (depende del lugar de hospedaje).Nuestra primera parada, hacia las 9:30 am, será a orillas del Río Don Diego, que nace en la Sierra Nevada. Caminaremos por 25 minutos viendo vegetación hermosa y peculiar (como las plantas dormilonas), animales únicos y las ruinas de un asentamiento Tayrona (es casi como ciudad perdida, pero más pequeña) . Al terminar dicho recorrido a, hacia las 10:15 bajaremos a un ritmo lento y relajante por el río durante 45 minutos aproximadamente viendo babillas, garzas azules, negras, pájaros de la zona, micos aulladores y llegaremos al lugar donde el río se encuentra con el mar. Si tenemos suerte desde allí veremos los picos nevados de la Sierra de Santa Marta. Sentiremos el agua fría del uno y la calidez del agua salada. iremos río arriba para disfrutar de un delicioso almuerzo típico a la orilla del río, donde podremos ver de cerca los monos aulladores y otras especies. Pasaremos una tarde tranquila. Regresaremos a las 4:30 pm reenergizados, eso es seguro"),
  InfoSwiper(
      imagen: "assets/images/Landing2.jpeg",
      title: "Paso del Mango: cascadas,experiencia de Cacaoyreserva natural",
      descripcion:
          "Itinerario: Paso del Mango se encuentra localizado en el Parque Nacional Sierra Nevada de Santa Marta, atravesando la antigua ciudad indígena de Masinga. En este increíble espacio natural conoceremos diferentes tipos de ecosistemas como Bosque Seco Tropical, Bosque Nublado, Bosque Primario y Bosque Secundario. Realizaremos tres actividades centrales: Trekking a tres cascadas localizadas en la selva, Visitaremos una reserva de animales en peligro de extinción y un programa exitoso de reforestación, fabricaremos nuestro propio chocolate luego de aprender todo sobre el cultivo de cacao y nos haremos mascarillas faciales del producto. El almuerzo lo tomaremos en un restaurante en la selva en donde los ingredientes son locales, orgánicos y sostenibles. Ven y disfruta con nosotros de una aventura única en una de las zonas menos exploradas de la región donde veremos indígenas, petroglifos, diversidad de especies nativas de flora y fauna en un pequeño paraíso en la montaña."),
  InfoSwiper(
      imagen: "assets/images/Landing2.jpeg",
      title: "charter: elige el destino y la embarcación",
      descripcion: ""),
  InfoSwiper(
      imagen: "assets/images/Landing2.jpeg",
      title: "compromiso abordo: velero",
      descripcion: ""),
  InfoSwiper(
      imagen: "assets/images/Landing2.jpeg",
      title: "alquiler de embarcación por horas",
      descripcion: ""),
];
