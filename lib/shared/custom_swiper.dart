import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app/content/info_swiper.dart';
import 'package:responsive_app/shared/horizontal_page_view.dart';
import 'package:responsive_app/shared/vertical_page_view.dart';

class CustomSwiper extends StatelessWidget {
  const CustomSwiper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final currentWidth = MediaQuery.of(context).size.width;
    return Swiper(
      viewportFraction: 1,
      scale: 1,
      duration: 1300,
      autoplay: true,
      autoplayDelay: 30000,
      autoplayDisableOnInteraction: true,
      itemCount: swiperContent.length,
      pagination: SwiperPagination(
        alignment: Alignment.bottomCenter,
        builder: DotSwiperPaginationBuilder(
            activeColor: const Color.fromRGBO(3, 31, 131, 1),
            color: Colors.grey[300]),
        margin: const EdgeInsets.all(50),
      ),
      control: SwiperControl(
        padding: EdgeInsets.only(top: size.height * 9 / 10),
        disableColor: Colors.blueAccent,
        color: const Color.fromRGBO(19, 156, 227, 1),
        size: 50,
      ),
      itemBuilder: (context, index) {
        // return HorizontalPageView(index: index);

        if (currentWidth < 600) {
          return VerticalPageView(index: index);
        } else {
          return HorizontalPageView(index: index);
        }
      },
    );
  }
}
