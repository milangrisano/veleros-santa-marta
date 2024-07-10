
import 'package:flutter/material.dart';

class TitleAppBar extends StatelessWidget {
  const TitleAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FittedBox(
      fit: BoxFit.contain,
      child: Text(
        'Veleros Santa Marta',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'DancingScript',
          shadows: [
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