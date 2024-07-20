import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration:  const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Artivela2.jpeg'),
          // image: AssetImage('assets/images/background_home.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.transparent,
            BlendMode.color
          ),
        )
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                'Veleros Santa Marta',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 80,
                  // color: Colors.black,
                  color: Colors.grey[300],
                  fontFamily: 'Ephesis',
                  shadows: const [
                    Shadow(
                      offset: Offset(3.0, 3.0),
                      blurRadius: 2.0,
                      color: Color.fromRGBO(3, 31, 131, 1)
                      // color: Color.fromRGBO(19, 156, 227, 1),
                    )
                  ]     
                ),
              ),
            ),
          ),
          //?Activar aqui de ser requerido!!!
          // SubTitleMessages(),
        ],
      ),
    );
  }
}


//?Para ser activado
class SubTitleMessages extends StatelessWidget {
  const SubTitleMessages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
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
    );
  }
}