import 'package:flutter/material.dart';

class SquareLogo extends StatelessWidget {
  final Color backgroundColor;
  final double height;
  final double width;
  const SquareLogo({
    super.key,
    required this.backgroundColor,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      color: backgroundColor,
      height: height,
      width: width,
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