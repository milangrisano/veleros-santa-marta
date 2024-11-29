import 'package:flutter/material.dart';
import 'package:responsive_app/shared/main_title.dart';
//import 'package:responsive_app/shared/picker_expirience.dart';
//import 'package:responsive_app/shared/sub_titles.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/Artivela2.jpeg'),
        // image: AssetImage('assets/images/background_home.jpg'),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.color),
      )),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          MainTitle(title: 'Veleros Santa Marta'),
          //?Activar aqui de ser requerido!!!
          // const SubTitle(
          //   textLabel:
          //       'Navega con nosotros, disfruta del mar y los mas hermosos paisajes',
          //   colorText: Color.fromRGBO(19, 156, 227, 1),
          // ),
          Spacer(),

          //! Desde aqui
          // SubTitle(
          //     textLabel: 'Eligue tu experiencia con nosotros',
          //     colorText: Color.fromRGBO(3, 31, 131, 1)),
          // PickerExpirence(),
          // SizedBox(height: 50),
          //! Hasta Aqui
        ],
      ),
    );
  }
}
