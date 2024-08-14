import 'package:flutter/material.dart';
import 'package:responsive_app/shared/custom_dropdown_button.dart';
import 'package:responsive_app/shared/date_picker.dart';

class PickerExpirence extends StatefulWidget {
  const PickerExpirence({super.key});

  @override
  State<PickerExpirence> createState() => _PickerExpirenceState();
}

class _PickerExpirenceState extends State<PickerExpirence> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    // final size = MediaQuery.of(context).size;
    return Container(
      width: 720,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white.withOpacity(0.3),
      ),
      padding: const EdgeInsets.all(10),
      // child: const PickersExpiriencesTablet(),
      // child: const PickersExpiriencesMobile(),
      child: currentWidth > 560
          ? const PickersExpiriencesTablet()
          : const PickersExpiriencesMobile(),
    );
  }
}

class PickersExpiriencesTablet extends StatelessWidget {
  const PickersExpiriencesTablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Flexible(
          child: CustomDropDownButton(),
        ),
        const DatePicker(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.send_rounded),
          color: Colors.white,
        ),
      ],
    );
  }
}

class PickersExpiriencesMobile extends StatelessWidget {
  const PickersExpiriencesMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomDropDownButton(),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const DatePicker(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.send_rounded),
              color: Colors.white,
            ),
          ],
        ),
      ],
    );
  }
}
