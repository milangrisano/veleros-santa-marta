import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:responsive_app/provider/page_provider.dart';
import 'package:responsive_app/shared/extend_appbar_icon.dart';
import 'package:responsive_app/shared/logo_appbar.dart';
import 'package:responsive_app/shared/title_appbar.dart';
import 'package:responsive_app/ui/home_body.dart';
import 'package:url_launcher/link.dart';

class TabletScaffold extends StatelessWidget {
  const TabletScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const LogoAppBar(),
        title: const TitleAppBar(
          color: Colors.white,
        ),

        actions: [
          ExtendAppBarIcon(
            text: 'Inicio',
            onPressed: () => pageProvider.goTo(0),
            icon: Icons.home,
          ),
          ExtendAppBarIcon(
            text: 'Nosotros',
            onPressed: () => pageProvider.goTo(1),
            icon: Icons.people,
          ),
          // ExtendAppBarIcon(
          //   text: 'Pricing',
          //   onPressed: () => pageProvider.goTo(2),
          //   icon: Icons.attach_money_sharp,
          // ),
          ExtendAppBarIcon(
            text: 'Experiencias',
            onPressed: () => pageProvider.goTo(2),
            icon: Icons.mail_outline,
          ),
          ExtendAppBarIcon(
            text: 'Contactanos',
            onPressed: () => pageProvider.goTo(3),
            icon: Icons.location_on,
          ),
          const SizedBox(width: 20),
        ],
        // elevation: 10,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        child: Link(
          target: LinkTarget.blank,
          uri: Uri.parse(
              'https://api.whatsapp.com/message/TL3FZRYCTTNKN1?autoload=1&app_absent=0'),
          builder: (context, followlink) => IconButton(
            onPressed: followlink,
            icon: const FaIcon(FontAwesomeIcons.whatsapp),
          ),
        ),
      ),
      body: const HomeBody(),
    );
  }
}
