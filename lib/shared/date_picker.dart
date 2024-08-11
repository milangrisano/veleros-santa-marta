import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

final date = DateTime.now();

class _DatePickerState extends State<DatePicker> {
  DateTimeRange dateRange = DateTimeRange(
    start: DateTime.now(),
    end: DateTime(date.year + 10, date.month, date.day),
  );
  @override
  Widget build(BuildContext context) {
    final start = dateRange.start;
    final end = dateRange.end;
    return Row(
      children: [
        SizedBox(
          height: 47,
          child: ElevatedButton(
            onPressed: pickDateRange,
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  const Color.fromRGBO(19, 156, 227, 1).withOpacity(0.7),
              elevation: 5.0,
              side: const BorderSide(color: Colors.white, width: 2.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            child: Text(
              DateFormat('dd/MM/yyyy').format(start),
              style: const TextStyle(
                backgroundColor: Colors.transparent,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(width: 5),
        SizedBox(
          height: 47,
          child: ElevatedButton(
            onPressed: pickDateRange,
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  const Color.fromRGBO(19, 156, 227, 1).withOpacity(0.7),
              elevation: 5.0,
              side: const BorderSide(color: Colors.white, width: 2.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            child: Text(
              DateFormat('dd/MM/yyyy').format(end),
              style: const TextStyle(
                backgroundColor: Colors.transparent,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
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
