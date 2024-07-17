import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  DrawerHeader(
      child: Column(
        children: [
          Image.asset(
            'assets/images/logo_small.png',
            scale: 1.5,
          ),
          const Text(
            'Veleros Santa Marta',
            style: TextStyle(
              color: Color.fromRGBO(3, 31, 131, 1),
              fontFamily: 'DancingScript',
              // fontSize: 32,
            )
          )
        ]
      ),
    );
  }
}