import 'package:flutter/material.dart';

const List<String> list = <String>[
  "Tayrona, snorkel & playa",
  "Tayrona por mar, Cinto, Playa Cristal y Bahía Concha",
  "Pasadia en Velero",
  "Snorkel en compañía de locales",
  "Amanecer de pesca",
  "Santo Cristo: Paraíso Escondido",
  "Ciénaga Grande, Descubriendo la Magia de los palafitos",
  "Atardecer en Velero",
  "Alquiler por Horas",
];

class CustomDropDownButton extends StatefulWidget {
  const CustomDropDownButton({super.key});
  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownMenu(
        width: 460,
        initialSelection: list.first,
        trailingIcon: const Icon(Icons.arrow_drop_up, color: Colors.white),
        selectedTrailingIcon:
            const Icon(Icons.arrow_drop_down, color: Colors.white),
        textStyle: const TextStyle(color: Colors.white),
        // expandedInsets: const EdgeInsets.only(right: 12),
        inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: const Color.fromRGBO(19, 156, 227, 1).withOpacity(0.7),
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                borderSide: BorderSide(color: Colors.white, width: 2.0))),
        label: const Text(
          'Selecione el Servicio',
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
        onSelected: (String? value) {
          setState(() {
            dropdownValue = value!;
          });
        },
        dropdownMenuEntries:
            list.map<DropdownMenuEntry<String>>((String value) {
          return DropdownMenuEntry<String>(
            value: value,
            label: value,
          );
        }).toList(),
      ),
    );
  }
}
