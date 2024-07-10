
import 'package:flutter/material.dart';

class TitleAppBar extends StatelessWidget {
  final Color color;
  const TitleAppBar({
    super.key, 
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return  FittedBox(
      fit: BoxFit.contain,
      child: Text(
        'Veleros Santa Marta',
        style: TextStyle(
          color: color,
          fontFamily: 'DancingScript',
          shadows: const [
            Shadow(
              offset: Offset(5.0, 5.0),
              blurRadius: 2.0,
              color: Colors.black87
            )
          ]       
        )
      ),
    );
  }
}