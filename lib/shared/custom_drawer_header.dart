import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const DrawerHeader(
      child: Column(
        children: [
          CircleAvatar(
            radius: 55,
            backgroundColor: Colors.white,
            foregroundImage: AssetImage('assets/images/logo_small.png'),
          ),
          Text(
            'Veleros Santa Marta',
            style: TextStyle(
              color: Colors.white,
              // color: Color.fromRGBO(3, 31, 131, 1),
              fontFamily: 'DancingScript',
              shadows: [
                Shadow(
                  offset: Offset(5.0, 5.0),
                  blurRadius: 2.0,
                  color: Color.fromRGBO(3, 31, 131, 1),
                )
              ]     
              // fontSize: 32,
            )
          )
        ]
      ),
    );
  }
}