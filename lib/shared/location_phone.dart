import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_app/shared/email_box.dart';

class LocationPhone extends StatelessWidget {
  const LocationPhone({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          height: size.height * 4.5/10,
          width: size.width * 1/2,
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
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(                  
                  'Kr.1 No. 22 - 93 / Marina Internacional de Santa Marta Muelle E - Embarcación Artivela, Santa Marta, Magdalena, Colombia.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(                        
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  SizedBox(width: 10),
                  Text(                  
                    '+57 3046654637',
                    textAlign: TextAlign.justify,
                    style: TextStyle(                        
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {  },
                    icon: const FaIcon(FontAwesomeIcons.facebook),
                    color: Colors.white,
                    iconSize: 40,
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {  },
                    icon: const FaIcon(FontAwesomeIcons.instagram),
                    color: Colors.white,
                    iconSize: 40,
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () {  },
                    icon: const FaIcon(FontAwesomeIcons.youtube),
                    color: Colors.white,
                    iconSize: 40,
                  ),
                ],
              )
            ],
          ),
        ),
        EmailBox(size: size)            
      ],
    );
  }
}

