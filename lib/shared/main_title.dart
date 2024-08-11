import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  final String title;
  final Color color;
  final double fontsize;
  final double letterSpacing;
  const MainTitle({
    super.key,
    required this.title,
    required this.color,
    required this.fontsize,
    required this.letterSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: fontsize,
            color: color,
            letterSpacing: letterSpacing,
            fontFamily: 'Akatab',
            shadows: const [
              Shadow(
                  offset: Offset(3.0, 3.0),
                  blurRadius: 2.0,
                  color: Color.fromRGBO(3, 31, 131, 1)
                  // color: Color.fromRGBO(19, 156, 227, 1),
                  )
            ]),
      ),
    );
  }
}
