import 'package:flutter/material.dart';

class BackgroundLineHorizontal extends StatelessWidget {
  final Widget text;
  final Widget title;
  const BackgroundLineHorizontal({
    super.key,
    required this.text,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          color: Colors.white,
          height: size.height * 3.5 / 10,
          width: size.width,
          child: title,
        ),
        Container(
          color: const Color.fromRGBO(3, 31, 131, 1),
          height: size.height * 5.3 / 10,
          width: size.width,
          child: text,
        ),
        Container(
          color: const Color.fromRGBO(19, 156, 227, 1),
          height: size.height * 0.2 / 10,
          width: size.width,
        ),
        Container(
          color: Colors.white,
          height: size.height * 1 / 10,
          width: size.width,
        ),
      ],
    );
  }
}
