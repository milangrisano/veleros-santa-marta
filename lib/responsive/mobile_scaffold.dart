import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_app/provider/page_provider.dart';
import 'package:responsive_app/shared/custom_drawer_header.dart';
import 'package:responsive_app/shared/drawer_list_tile.dart';
import 'package:responsive_app/shared/logo_appbar.dart';
import 'package:responsive_app/shared/title_appbar.dart';
import 'package:responsive_app/ui/home_body_mobile.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color.fromRGBO(19, 156, 227, 1),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white
        ),
        backgroundColor: Colors.transparent,
        leading: const LogoAppBar(),
        title: const TitleAppBar(color: Colors.white,),
        centerTitle: false,
      ),
      endDrawer: Drawer(
        backgroundColor: const Color.fromRGBO(19, 156, 227, 1),
        child: Column(
          children: [
            const CustomDrawerHeader(),
            DrawerListTile(
              icon: Icons.home,
              name: const Text('Inicio'),
              onPressed: ()=> pageProvider.goTo(0),              
            ),
            DrawerListTile(
              icon: Icons.people,
              name: const Text('Nosotros'),
              onPressed: ()=> pageProvider.goTo(1),
            ),
            DrawerListTile(
              icon: Icons.money,
              name: const Text('Imagenes'),
              onPressed: ()=> pageProvider.goTo(2),
            ),
            DrawerListTile(
              icon: Icons.mail_outline_outlined,
              name: const Text('Servicios'),
              onPressed: ()=> pageProvider.goTo(3),
            ),
            DrawerListTile(
              icon: Icons.location_on,
              name: const Text('Contactanos'),
              onPressed: ()=> pageProvider.goTo(4),
            ),
          ],
        ),

      ),
      body: const HomeBodyMobile(),
    );
  }
}
