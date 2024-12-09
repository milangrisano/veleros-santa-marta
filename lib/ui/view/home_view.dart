import 'package:flutter/material.dart';
import 'package:responsive_app/shared/main_title.dart';
// import 'package:responsive_app/shared/picker_expirience.dart';
// import 'package:responsive_app/shared/sub_titles.dart';
import 'package:simple_shadow/simple_shadow.dart';
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
      child: Column(
        children: [
          const Spacer(),
          SimpleShadow(
            opacity: 1,
            color: const Color.fromRGBO(3, 31, 131, 1),
            offset: const Offset(2, 2),
            sigma: 7,
            child: Image(
              width: 200.0,
              height: 200.0,
              color: Colors.grey[300],
              // color: Color.fromRGBO(75, 175, 232, 1),
              image: const AssetImage('assets/images/Logo2.png'),
            ), // Default: 2
          ),
          MainTitle(
            title: 'TUTOUR COLOMBIA',
            color: Colors.grey.shade300,
            fontsize: 60,
            letterSpacing: 15,
            // color: Color.fromRGBO(75, 175, 232, 1),
          ),
          MainTitle(
            title: 'EXPERIENCIAS',
            color: Colors.grey.shade300,
            fontsize: 25,
            letterSpacing: 5,
          ),
          const Spacer(),
          //?Para visualizar el Datepicker descomentar!!!
          //! Desde aqui
          // SubTitle(
          //   textLabel: 'Eligue tu experiencia con nosotros',
          //   // colorText: Color.fromRGBO(3, 31, 131, 1)),
          //   colorText: Colors.grey.shade300,
          // ),
          // const PickerExpirence(),
          // const SizedBox(height: 50),
          //! Hasta Aqui
        ],
      ),
    );
  }
}
