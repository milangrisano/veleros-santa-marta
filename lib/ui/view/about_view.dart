import 'package:flutter/material.dart';
import 'package:responsive_app/content/info_square.dart';
import 'package:responsive_app/shared/logo.dart';
import 'package:responsive_app/shared/square_image.dart';
import 'package:responsive_app/shared/square_info.dart';


class AboutView extends StatelessWidget {
  const AboutView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final currentWidth = MediaQuery.of(context).size.width;
    return  Row(
      children: [
        //? Primera Columna
        Column(
          children: [
            SquareImg(
              image: squareContent[0].imagen,
              height: size.height * 1/2,
              width: size.width * 1/3,
            ),
            SquareInfo(
              height: size.height * 1/2,
              width: size.width * 1/3,
              color: const Color.fromRGBO(19, 156, 227, 1),
              text: squareContent[0].title,
              colorText: const Color.fromRGBO(3, 31, 131, 1),
              fontSize: currentWidth < 590 ? 18 : 24,
              colorTextparagraph: Colors.white,
              fontSizeparagraph: currentWidth < 892 ? 12 : 18,
              textparagraph: squareContent[0].descripcion,
            ),
          ],
        ),
        //? Segunda Columna
        Column(
          children: [
            SquareLogo(
              backgroundColor: Colors.white,
              height: size.height * 1/2,
              width: size.width * 1/3,
            ),
            SquareImg(
              image: squareContent[1].imagen,
              height: size.height * 1/2,
              width: size.width * 1/3,
            ),
          ],
        ),
        //? Tercera Columna
        Column(
          children: [
            SquareImg(
              image: squareContent[2].imagen,
              height: size.height * 1/2,
              width: size.width * 1/3,
            ),
            SquareInfo(
              height: size.height * 1/2,
              width: size.width * 1/3,
              color: const Color.fromRGBO(3, 31, 131, 1),
              text: squareContent[2].title,
              colorText: const Color.fromRGBO(19, 156, 227, 1),
              fontSize: currentWidth < 590 ? 18 : 24,
              colorTextparagraph: Colors.white,
              fontSizeparagraph: currentWidth < 892 ? 12 : 18,
              textparagraph: squareContent[2].descripcion,
            ),
          ],
        ),
      ],
    );
  }
}





