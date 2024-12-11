import 'package:flutter/material.dart';
import 'package:responsive_app/content/info_swiper.dart';
import 'package:responsive_app/shared/background_line_horizontal.dart';

class HorizontalPageView extends StatelessWidget {
  final int index;
  const HorizontalPageView({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final currentWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          // color: Colors.lightBlue,
          width: size.width * 4.5 / 10,
          height: size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(swiperContent[index].imagen),
            fit: BoxFit.cover,
          )),
        ),
        Container(
          color: Colors.transparent,
          width: size.width * 4.5 / 10,
          height: size.height,
          child: BackgroundLineHorizontal(
            title: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  swiperContent[index].title,
                  style: const TextStyle(
                    color: Color.fromRGBO(3, 31, 131, 1),
                    fontSize: 32,
                    fontFamily: 'Akatab',
                  ),
                ),
              ),
            ),
            text: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Center(
                child: Text(
                  swiperContent[index].descripcion,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: currentWidth > 1171 ? 15 : 12,
                      // fontFamily: 'Pacifico'
                      fontFamily: 'MontserratAlternates',
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
