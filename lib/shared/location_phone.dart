import 'package:flutter/material.dart';
import 'package:responsive_app/shared/adress_network.dart';
import 'package:responsive_app/shared/email_box.dart';

class LocationPhone extends StatelessWidget {
  const LocationPhone({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [const AdressNetwork(), EmailBox(size: size)],
    );
  }
}
