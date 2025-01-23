import 'package:calculator/math.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NumberButton extends StatelessWidget {
  final int number;
  final Math math = Get.find();

  NumberButton({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          math.addDigit(number.toString());
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            color: Colors.grey,
          ),
          alignment: Alignment.center,
          child: Text('$number', style: const TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}