import 'package:cab_co19/features/shared_cab/constants/shared_cab_constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomTimeInput extends StatefulWidget {
  const CustomTimeInput({super.key});

  @override
  State<CustomTimeInput> createState() => _CustomTimeInputState();
}

class _CustomTimeInputState extends State<CustomTimeInput> {
  TimeOfDay? _selectedTime;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _selectTime(context);
      },
      child: Container(
        decoration: BoxDecoration(
          color: SharedCabConstant.inputBoxBg,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Row(
          children: [
            const Icon(Icons.access_time),
            const Gap(10),
            Text(
              _selectedTime != null
                  ? _selectedTime!.format(context)
                  : "Time of Travel",
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

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? TimeOfDay.now(),
    );
    if (pickedTime != null && pickedTime != _selectedTime) {
      setState(() {
        _selectedTime = pickedTime;
      });
    }
  }
}
