import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const DrawerHeader(
      child: Column(
        children: [
          CircleAvatar(
            radius: 55,
            // backgroundColor: Color.fromRGBO(75, 175, 232, 1),
            backgroundColor: Color.fromRGBO(19, 156, 227, 1),
            // foregroundColor: Colors.blue,
            foregroundImage: AssetImage('assets/images/Logo3.png'),
          ),
          Text(
            'TUTOUR COLOMBIA',
            style: TextStyle(
                color: Colors.white,
                // color: Color.fromRGBO(3, 31, 131, 1),
                fontFamily: 'Akatab',
                shadows: [
                  Shadow(
                    offset: Offset(3.0, 3.0),
                    blurRadius: 2.0,
                    color: Color.fromRGBO(3, 31, 131, 1),
                  )
                ]
                // fontSize: 32,
                ),
          )
        ],
      ),
    );
  }
}
