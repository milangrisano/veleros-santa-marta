import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:responsive_app/shared/custom_dropdown_button.dart';

class PickerExpirence extends StatefulWidget {
  const PickerExpirence({super.key});

  @override
  State<PickerExpirence> createState() => _PickerExpirenceState();
}

class _PickerExpirenceState extends State<PickerExpirence> {
  DateTimeRange dateRange =
      DateTimeRange(start: DateTime(2024, 07, 29), end: DateTime(2026, 07, 30));
  // String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    final start = dateRange.start;
    final end = dateRange.end;
    final size = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white.withOpacity(0.3),
        ),
        height: size.height * 0.8 / 10,
        width: size.width * 7.2 / 10,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          const SizedBox(width: 12),
          const CustomDropDownButton(),
          // Expanded(child: Container(height: 45, color: Colors.black26)),
          const SizedBox(width: 12),
          SizedBox(
            height: 48,
            width: 200,
            child: ElevatedButton(
              onPressed: pickDateRange,
              style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color.fromRGBO(19, 156, 227, 1).withOpacity(0.7),
                  elevation: 5.0,
                  side: const BorderSide(color: Colors.white, width: 2.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0))),
              child: Text(
                DateFormat('dd/MM/yyyy').format(start),
                style: const TextStyle(
                    backgroundColor: Colors.transparent,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
          ),
          const SizedBox(width: 12),
          SizedBox(
            height: 48,
            width: 200,
            child: ElevatedButton(
              onPressed: pickDateRange,
              style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color.fromRGBO(19, 156, 227, 1).withOpacity(0.7),
                  elevation: 5.0,
                  side: const BorderSide(color: Colors.white, width: 2.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0))),
              child: Text(
                DateFormat('dd/MM/yyyy').format(end),
                style: const TextStyle(
                    backgroundColor: Colors.transparent,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
          ),
          const SizedBox(width: 12),
        ]));
  }

  Future pickDateRange() async {
    DateTimeRange? newDateRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (newDateRange == null) return;
    setState(() => dateRange = newDateRange);
  }
}
