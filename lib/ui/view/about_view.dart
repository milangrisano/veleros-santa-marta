import 'package:flutter/material.dart';
import 'package:responsive_app/shared/logo_title.dart';
import 'package:responsive_app/shared/square_image.dart';
import 'package:responsive_app/shared/square_info.dart';
import 'package:responsive_app/util/info_swiper.dart';


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
              image: swiperContent[0].imagen,
            ),
            SquareInfo(
              color: const Color.fromRGBO(19, 156, 227, 1),
              text: swiperContent[1].title,
              colorText: const Color.fromRGBO(3, 31, 131, 1),
              fontSize: 24,
              colorTextparagraph: Colors.white,
              fontSizeparagraph: 18,
              textparagraph: swiperContent[1].descripcion,
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
              image: swiperContent[1].imagen,
            ),
          ],
        ),
        //? Tercera Columna
        Column(
          children: [
            SquareImg(
              image: swiperContent[2].imagen,
            ),
            SquareInfo(
              color: const Color.fromRGBO(3, 31, 131, 1),
              text: swiperContent[0].title,
              colorText: const Color.fromRGBO(19, 156, 227, 1),
              fontSize: 24,
              colorTextparagraph: Colors.white,
              fontSizeparagraph: 18,
              textparagraph: swiperContent[0].descripcion,
            ),
          ],
        ),
      ],
    );
  }
}





