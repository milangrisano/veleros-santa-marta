import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration:  const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background_home.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.transparent,
            BlendMode.color
          ),
        )
      ),
      child:  const Column(
        children: [
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                'Veleros Santa Marta',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 80,
                  color: Colors.white,
                  // color: Color.fromRGBO(3, 31, 131, 1),
                  fontFamily: 'Ephesis',
                  shadows: [
                    Shadow(
                      offset: Offset(5.0, 5.0),
                      blurRadius: 2.0,
                      color: Color.fromRGBO(3, 31, 131, 1)
                    )
                  ]     
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: FittedBox(
              fit: BoxFit.fitWidth ,
              child: Text(
                'Navega con nosotros, disfruta del mar y los mas hermosos paisajes',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color.fromRGBO(19, 156, 227, 1),
                  fontFamily: 'Praise',
                  shadows: [
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 1.0,
                      color: Colors.white
                    )
                  ]
                ),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}