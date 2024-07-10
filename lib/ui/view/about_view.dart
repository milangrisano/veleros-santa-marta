import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Column(
          children: [
            SquareImg(
              image: 'assets/images/Artivela1.jpeg',
            ),
            SquareInfo(
              color: Color.fromRGBO(19, 156, 227, 1),
            ),
          ],
        ),
        Column(
          children: [
            SquareLogo(
              color: Colors.white,
            ),
            SquareImg(
              image: 'assets/images/Artivela2.jpeg',
            ),
          ],
        ),
        Column(
          children: [
            SquareImg(
              image: 'assets/images/Artivela3.jpeg',
            ),
            SquareInfo(
              color: Color.fromRGBO(3, 31, 131, 1),
            ),
          ],
        ),
      ],
    );
  }
}

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
class SquareInfo extends StatelessWidget {
  final Color color;
  const SquareInfo({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: color,
      height: size.height * 1/2,
      width: size.width * 1/3,
    );
  }
}


class SquareLogo extends StatelessWidget {
  final Color color;
  const SquareLogo({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.bottomCenter,
      color: color,
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