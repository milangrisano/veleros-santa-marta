import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_app/provider/page_provider.dart';
import 'package:responsive_app/shared/extend_appbar_button.dart';
import 'package:responsive_app/shared/logo_appbar.dart';
import 'package:responsive_app/shared/title_appbar.dart';
import 'package:responsive_app/ui/home_body.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const LogoAppBar(),
        title: const TitleAppBar(
          color: Colors.white,
        ),
        actions: [
          ExtendAppBarButton(
            text: 'Inicio',
            onPressed: () => pageProvider.goTo(0),
          ),
          ExtendAppBarButton(
            text: 'Nosotros',
            onPressed: () => pageProvider.goTo(1),
          ),
          ExtendAppBarButton(
            text: 'Imagenes',
            onPressed: () => pageProvider.goTo(2),
          ),
          ExtendAppBarButton(
            text: 'Servicios',
            onPressed: () => pageProvider.goTo(3),
          ),
          ExtendAppBarButton(
            text: 'Contactanos',
            onPressed: () => pageProvider.goTo(4),
          ),
          const SizedBox(width: 20),
        ],
        // elevation: 10,
      ),
      body: const HomeBody(),
    );
  }
}
//! colocar en lista pricing para no teber errores y cambiar el index de goTo()//!