import 'package:flutter/material.dart';
import 'package:responsive_app/content/info_swiper.dart';

class VerticalPageView extends StatelessWidget {
  final int index;
  const VerticalPageView({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          // color: Colors.lightBlue,
          width: size.width,
          height: size.height * 3.5 / 10,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(swiperContent[index].imagen),
            fit: BoxFit.cover,
          )),
        ),
        Container(
          color: Colors.transparent,
          width: size.width,
          height: size.height * 5.5 / 10,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: size.width,
                height: size.height * 0.4 / 5,
                color: Colors.white,
                child: Text(
                  textAlign: TextAlign.center,
                  swiperContent[index].title,
                  style: const TextStyle(
                    color: Color.fromRGBO(3, 31, 131, 1),
                    fontSize: 30,
                    fontFamily: 'Ephesis',
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: size.width,
                height: size.height * 2.25 / 5,
                // color: Colors.yellowAccent,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    swiperContent[index].descripcion,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'MontserratAlternates',
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          width: size.width,
          height: size.height * 1 / 10,
        ),
      ],
    );
  }
}
