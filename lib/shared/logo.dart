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
            Image.asset(
              'assets/images/Logo3.png',
              color: const Color.fromRGBO(75, 175, 232, 1),
              scale: 3,
            ),
            const FittedBox(
              child: Text('TUTOUR COLOMBIA',
                  style: TextStyle(
                    color: Color.fromRGBO(75, 175, 232, 1),
                    fontFamily: 'Akatab',
                    fontSize: 32,
                  )),
            ),
          ],
        ));
  }
}
