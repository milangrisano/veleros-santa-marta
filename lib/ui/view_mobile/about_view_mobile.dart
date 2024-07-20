import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app/content/info_square_mobile.dart';
// ignore: unused_import
import 'package:responsive_app/shared/logo.dart';
import 'package:responsive_app/shared/square_image.dart';


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
  const SwiperSquare({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final currentWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [        
        SquareImg(
          image: squareMobilContent[index].image,
          height: size.height * 1/2,
          width: size.width,
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Container(
            color: Color(squareMobilContent[index].colorBackground),
            height: size.height * 1/2,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(squareMobilContent[index].title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(squareMobilContent[index].colorText),
                      fontSize: squareMobilContent[index].fontSize,
                      fontFamily: squareMobilContent[index].fontfamilytile,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(squareMobilContent[index].description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: const Color(0xFFFFFFFF),
                      fontSize: currentWidth < 900 ? 8 : 18,
                      fontFamily: 'MontserratAlternates'
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
