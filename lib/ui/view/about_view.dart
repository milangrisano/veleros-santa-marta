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
        Column(
          children: [
            const SquareImg(
              image: 'assets/images/Artivela1.jpeg',
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
        const Column(
          children: [
            SquareLogo(
              backgroundColor: Colors.white,
            ),
            SquareImg(
              image: 'assets/images/Artivela2.jpeg',
            ),
          ],
        ),
        Column(
          children: [
            SquareImg(
              image: swiperContent[0].imagen,
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





