import 'package:calculator/math.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MultiplyButton extends StatelessWidget {
  final Math _math = Get.find();
  MultiplyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          _math.setOperation(Operation.multiply);
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            color: Colors.grey,
          ),
          alignment: Alignment.center,
          child: const Text('x', style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }

}