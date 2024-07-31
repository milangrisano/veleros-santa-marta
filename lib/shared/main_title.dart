import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  final String title;
  const MainTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: FittedBox(
        fit: BoxFit.contain,
        child: Text(
          title,
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
              ]),
        ),
      ),
    );
  }
}
