import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AdressNetwork extends StatelessWidget {
  const AdressNetwork({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final currentWidth = MediaQuery.of(context).size.width;
    return Container(
      height: size.height * 4.5 / 10,
      width: size.width * 1 / 2,
      // color: Colors.deepPurple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.location_on,
            color: Colors.white,
            size: 40.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Carrera 1 #22-93, Marina Internacional de Santa Marta Muelle E, Embarcación Artivela, Santa Marta, Magdalena, Colombia.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: currentWidth < 580 ? 16 : 24,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 10),
          FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.phone,
                  color: Colors.white,
                  size: 28.0,
                ),
                const SizedBox(width: 10),
                Text(
                  '+57 3046654637',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: currentWidth < 380 ? 15 : 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const FaIcon(FontAwesomeIcons.facebook),
                color: Colors.white,
                iconSize: currentWidth < 380 ? 20 : 30,
              ),
              const SizedBox(width: 10),
              IconButton(
                onPressed: () {},
                icon: const FaIcon(FontAwesomeIcons.instagram),
                color: Colors.white,
                iconSize: currentWidth < 380 ? 20 : 30,
              ),
              const SizedBox(width: 10),
              IconButton(
                onPressed: () {},
                icon: const FaIcon(FontAwesomeIcons.youtube),
                color: Colors.white,
                iconSize: currentWidth < 380 ? 20 : 30,
              ),
            ],
          )
        ],
      ),
    );
  }
}
