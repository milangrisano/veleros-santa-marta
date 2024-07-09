import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_app/provider/page_provider.dart';
import 'package:responsive_app/ui/view/about_view.dart';
import 'package:responsive_app/ui/view/contact_view.dart';
import 'package:responsive_app/ui/view/home_view.dart';
import 'package:responsive_app/ui/view/location_view.dart';
import 'package:responsive_app/ui/view/pricing_view.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return PageView(
      controller: pageProvider.scrollControler,
      scrollDirection: Axis.vertical,
      children: const [
        HomeView(),
        AboutView(),
        PricingView(),
        ContactView(),
        LocationView(),
      ],
    );
  }
}