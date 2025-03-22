import 'package:cab_app/features/shared_cab/constants/shared_cab_constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomDateInput extends StatefulWidget {
  const CustomDateInput({super.key});

  @override
  State<CustomDateInput> createState() => _CustomDateInputState();
}

class _CustomDateInputState extends State<CustomDateInput> {
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _selectDate(context);
      },
      child: Container(
        decoration: BoxDecoration(
          color: SharedCabConstant.inputBoxBg,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: Row(
          children: [
            const Icon(Icons.calendar_month),
            const Gap(10),
            Text(
              _selectedDate != null
                  ? DateFormat('dd-MM-yyyy').format(_selectedDate!)
                  : "Date of Travel",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ],
        ).px(12).py(12),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime.now().subtract(
          const Duration(days: 365)), // Allow past year selection (optional)
      lastDate: DateTime.now().add(
          const Duration(days: 365)), // Allow future year selection (optional)
    );
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
    }
  }
}
