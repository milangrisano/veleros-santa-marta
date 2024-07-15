import 'package:flutter/material.dart';
import 'package:responsive_app/content/info_square.dart';
import 'package:responsive_app/shared/logo_title.dart';
import 'package:responsive_app/shared/square_image.dart';
import 'package:responsive_app/shared/square_info.dart';


class AboutView extends StatelessWidget {
  const AboutView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        //? Primera Columna
        Column(
          children: [
            SquareImg(
              image: squareContent[0].imagen,
            ),
            SquareInfo(
              color: const Color.fromRGBO(19, 156, 227, 1),
              text: squareContent[0].title,
              colorText: const Color.fromRGBO(3, 31, 131, 1),
              fontSize: 24,
              colorTextparagraph: Colors.white,
              fontSizeparagraph: 18,
              textparagraph: squareContent[0].descripcion,
            ),
          ],
        ),
        //? Segunda Columna
        Column(
          children: [
            const SquareLogo(
              backgroundColor: Colors.white,
            ),
            SquareImg(
              image: squareContent[1].imagen,
            ),
          ],
        ),
        //? Tercera Columna
        Column(
          children: [
            SquareImg(
              image: squareContent[2].imagen,
            ),
            SquareInfo(
              color: const Color.fromRGBO(3, 31, 131, 1),
              text: squareContent[2].title,
              colorText: const Color.fromRGBO(19, 156, 227, 1),
              fontSize: 24,
              colorTextparagraph: Colors.white,
              fontSizeparagraph: 18,
              textparagraph: squareContent[2].descripcion,
            ),
          ],
        ),
      ],
    );
  }
}





