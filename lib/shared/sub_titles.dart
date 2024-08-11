import 'package:flutter/material.dart';

class SubTitle extends StatelessWidget {
  final String textLabel;
  final Color colorText;
  const SubTitle({
    super.key,
    required this.textLabel,
    required this.colorText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(
          textLabel,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: colorText,
              fontFamily: 'Akatab',
              shadows: const [
                Shadow(
                    offset: Offset(2.0, 2.0),
                    blurRadius: 1.0,
                    // color: Colors.white),
                    color: Color.fromRGBO(3, 31, 131, 1)),
              ]),
        ),
      ),
    );
  }
}
