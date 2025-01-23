import 'package:calculator/math.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DivideButton extends StatelessWidget {
  final Math _math = Get.find();

  DivideButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          _math.setOperation(Operation.divide);
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            color: Colors.grey,
          ),
          alignment: Alignment.center,
          child: const Text('/', style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }

}