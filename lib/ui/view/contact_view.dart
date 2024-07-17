import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app/content/info_swiper.dart';
import 'package:responsive_app/shared/background_line.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [        
        const BackgroundLine(
          text: Text(''),
          title: Text(''),          
        ),
        Container(
          color: Colors.transparent,
          width: size.width * 9/10,
          height: size.height,
          child: const CustomSwiper()
        ),        
      ]
    );
  }
}

class CustomSwiper extends StatelessWidget {
  const CustomSwiper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Swiper(
      viewportFraction: 1,
      scale: 1,
      duration: 1300,
      autoplay: true,
      autoplayDelay: 30000,
      autoplayDisableOnInteraction: true,
      itemCount: swiperContent.length,
      pagination:  SwiperPagination(
        alignment: Alignment.bottomCenter,
        builder: DotSwiperPaginationBuilder(
          activeColor:  const Color.fromRGBO(3, 31, 131, 1),
          color: Colors.grey[300]
        ),
        margin: const EdgeInsets.all(50),
      ),
      control: const SwiperControl(
        padding: EdgeInsets.only(top: 900),
        disableColor: Colors.blueAccent,
        // color: Color.fromRGBO(3, 31, 131, 1),
        color:Color.fromRGBO(19, 156, 227, 1),
        size: 50,
      ),
      itemBuilder: (context, index) => HorizontalPageView(index: index,),
    );
  }
}

class HorizontalPageView extends StatelessWidget {
  final int index;
  const HorizontalPageView({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          // color: Colors.lightBlue,
          width: size.width * 4.5/10,
          height: size.height,
          decoration:  BoxDecoration(
            image: DecorationImage(
              image: AssetImage(swiperContent[index].imagen),
              fit: BoxFit.cover,
            )
          ),
        ),
        Container(
          color: Colors.transparent,
          width: size.width * 4.5/10,
          height: size.height,
          child: BackgroundLine(
            title: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Center(
                child: Text(
                  textAlign: TextAlign.center,
                  swiperContent[index].title,
                  style: const TextStyle(
                    color:Color.fromRGBO(3, 31, 131, 1),
                    fontSize: 34,
                    fontFamily: 'Ephesis',
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
                  style: const TextStyle(
                    fontSize: 18,
                    // fontFamily: 'Pacifico'
                    fontFamily: 'MontserratAlternates',
                    color: Colors.white
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}