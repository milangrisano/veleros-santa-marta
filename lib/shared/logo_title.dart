import 'package:flutter/material.dart';

class SquareLogo extends StatelessWidget {
  final Color backgroundColor;
  const SquareLogo({
    super.key,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.bottomCenter,
      color: backgroundColor,
      height: size.height * 1/2,
      width: size.width * 1/3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/logo_small.png'),
          const Text(
           'Veleros Santa Marta',
            style: TextStyle(
              color: Color.fromRGBO(3, 31, 131, 1),
              fontFamily: 'DancingScript',
              fontSize: 32,
            )
          ),
        ],
      )
    );
  }
}