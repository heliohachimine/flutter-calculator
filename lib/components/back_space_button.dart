import 'package:calculator/math.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackSpaceButton extends StatelessWidget {
  final Math _math = Get.find();

  BackSpaceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          _math.removeDigit();
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            color: Colors.grey,
          ),
          alignment: Alignment.center,
          child: const Text('C', style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }

}