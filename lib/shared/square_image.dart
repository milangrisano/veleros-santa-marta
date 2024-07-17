import 'package:flutter/material.dart';

class SquareImg extends StatelessWidget {
  final String image;
  const SquareImg({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 1/2,
      width: size.width * 1/3,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        )
      ),
    );
  }
}