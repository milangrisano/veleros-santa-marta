import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration:  BoxDecoration(
        image: DecorationImage(
          image: const AssetImage('assets/images/background_home.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.grey.shade600,
            BlendMode.softLight
          ),
        )
      ),
      child:  Column(
        children: [
          const SizedBox(height: 200,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                'Veleros Santa Marta',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 80,
                  color: Colors.grey[700],
                  fontFamily: 'Ephesis',
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: FittedBox(
              fit: BoxFit.fitWidth ,
              child: Text(
                'Navega con nosotros, disfruta del mar y los mas hermosos paisajes',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.grey[700],
                  fontFamily: 'Praise',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}