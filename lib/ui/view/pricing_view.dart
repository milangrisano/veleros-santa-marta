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
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(swiperContent[index].imagen),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white.withOpacity(0.6)),
                child: const Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/logo_small.png'),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: EdgeInsets.only(top: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Yei_Travelmarket',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 10.0),
                                  child: Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 6.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        '11 Sem',
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding: EdgeInsets.only(right: 20.0),
                                        child: Text(
                                          'Responder',
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 60),
            ],
          ),
        );
      },
    );
  }
}
