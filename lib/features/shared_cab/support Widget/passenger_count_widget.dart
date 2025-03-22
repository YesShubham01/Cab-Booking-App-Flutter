import 'package:cab_app/features/shared_cab/constants/shared_cab_constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomPassengerCountInput extends StatefulWidget {
  const CustomPassengerCountInput({super.key});

  @override
  State<CustomPassengerCountInput> createState() =>
      _CustomPassengerCountInputState();
}

class _CustomPassengerCountInputState extends State<CustomPassengerCountInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: SharedCabConstant.inputBoxBg,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: const Row(
        children: [
          Icon(Icons.person),
          Gap(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "No. of Passengers",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              Text(
                "(2+ years)",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 11,
                ),
              ),
            ],
          ),
          Spacer(),
          CustomCounter(),
        ],
      ).px(12).py(5),
    );
  }
}

class CustomCounter extends StatefulWidget {
  const CustomCounter({super.key});

  @override
  State<CustomCounter> createState() => _CustomCounterState();
}

class _CustomCounterState extends State<CustomCounter> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: _decrement,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(5),
              ),
            ),
            child: const Icon(
              Icons.remove,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          width: 40,
          child: Center(
            child: Text(
              "$count",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: _increment,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
            ),
            child: const Icon(
              Icons.add,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  void _increment() {
    if (count < 20) {
      setState(() {
        count++;
      });
    }
  }

  void _decrement() {
    if (count != 0) {
      setState(() {
        count--;
      });
    }
  }
}
