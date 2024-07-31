import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:responsive_app/content/info_swiper.dart';

class PricingView extends StatelessWidget {
  const PricingView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: const AssetImage('assets/images/proa_view.png'),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(Colors.grey.shade700, BlendMode.darken),
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.transparent,
            width: size.width * 8 / 10,
            height: size.height * 8 / 10,
            child: const _CustomSwiper(),
          ),
        ],
      ),
    );
  }
}

class _CustomSwiper extends StatelessWidget {
  const _CustomSwiper();

  @override
  Widget build(BuildContext context) {
    return Swiper(
      duration: 1300,
      autoplay: true,
      layout: SwiperLayout.STACK,
      itemCount: 8,
      itemWidth: 600,
      autoplayDelay: 3000,
      autoplayDisableOnInteraction: true,
      pagination: const SwiperPagination(
          alignment: Alignment.bottomCenter,
          builder: SwiperPagination.fraction),
      control: const SwiperControl(
        disableColor: Colors.blueAccent,
        color: Color.fromRGBO(19, 156, 227, 1),
        size: 50,
      ),
      itemBuilder: (context, index) {
        return Image.asset(
          swiperContent[index].imagen,
          fit: BoxFit.fitWidth,
        );
      },
    );
  }
}
