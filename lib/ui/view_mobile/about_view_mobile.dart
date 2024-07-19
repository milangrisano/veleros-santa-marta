import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app/content/info_square_mobile.dart';
// ignore: unused_import
import 'package:responsive_app/shared/logo.dart';
import 'package:responsive_app/shared/square_image.dart';
import 'package:responsive_app/shared/square_info.dart';


class AboutViewMobile extends StatelessWidget {
  const AboutViewMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Swiper(
      viewportFraction: 1,
      scale: 1,
      duration: 1300,
      autoplay: true,
      autoplayDelay: 30000,
      autoplayDisableOnInteraction: true,
      itemCount: squareMobilContent.length,
      pagination:  SwiperPagination(
        alignment: Alignment.bottomCenter,
        builder: DotSwiperPaginationBuilder(
          activeColor:Colors.grey.shade800,
          color: Colors.grey[300]
        ),
        margin: const EdgeInsets.all(50),
      ),
      control:   SwiperControl(
        padding: EdgeInsets.only(top: size.height * 8/10),
        disableColor: Colors.blueAccent,
        // color: Color.fromRGBO(3, 31, 131, 1),
        // color:Color.fromRGBO(19, 156, 227, 1),
        color:Colors.black,
        size: 50,
      ),
      itemBuilder: (context, index) => SwiperSquare(index: index),
    );
  }
}

class SwiperSquare extends StatelessWidget {
  final int index;
  const SwiperSquare({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [        
        SquareImg(
          image: squareMobilContent[index].image,
          height: size.height * 1/2,
          width: size.width,
        ),
        SquareInfo(
          height: size.height * 1/2,
          width: size.width,
          color: const Color.fromRGBO(3, 31, 131, 1),
          // color: Colors.white,
          text: squareMobilContent[index].title,
          colorText: const Color.fromRGBO(19, 156, 227, 1),
          fontSize: 24,
          colorTextparagraph: Colors.white,
          fontSizeparagraph: 14,
          textparagraph: squareMobilContent[index].description,
        ),
      ],
    );
  }
}

        // SquareLogo(
        //   backgroundColor: Colors.white,
        //   height: size.height * 1/2,
        //   width: size.width,
        // ),
        // SquareInfo(
        //   height: size.height * 1/4,
        //   width: size.width,
        //   color: const Color.fromRGBO(19, 156, 227, 1),
        //   text: squareContent[0].title,
        //   colorText: const Color.fromRGBO(3, 31, 131, 1),
        //   fontSize: 24,
        //   colorTextparagraph: Colors.white,
        //   fontSizeparagraph: 18,
        //   textparagraph: squareContent[0].descripcion,
        // ),
        // SquareImg(
        //   image: squareContent[0].imagen,
        //   height: size.height * 1/4,
        //   width: size.width,
        // ),
        // SquareImg(
        //   image: squareContent[2].imagen,
        //   height: size.height * 1/2,
        //   width: size.width,
        // ),
        // SquareInfo(
        //   height: size.height * 1/2,
        //   width: size.width,
        //   color: const Color.fromRGBO(3, 31, 131, 1),
        //   text: squareContent[2].title,
        //   colorText: const Color.fromRGBO(19, 156, 227, 1),
        //   fontSize: 24,
        //   colorTextparagraph: Colors.white,
        //   fontSizeparagraph: 18,
        //   textparagraph: squareContent[2].descripcion,
        // ),