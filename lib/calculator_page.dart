import 'package:calculator/components/add_button.dart';
import 'package:calculator/components/back_space_button.dart';
import 'package:calculator/components/clear_button.dart';
import 'package:calculator/components/divide_button.dart';
import 'package:calculator/components/comma_button.dart';
import 'package:calculator/components/equals_button.dart';
import 'package:calculator/components/number_button.dart';
import 'package:calculator/components/percent_button.dart';
import 'package:calculator/components/subtract_button.dart';
import 'package:calculator/math.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import 'package:calculator/extensions/double_extensions.dart';

import 'components/multiply_button.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  CalculatorPageState createState() {
    return CalculatorPageState();
  }
}

class CalculatorPageState extends State<CalculatorPage> {
  final _math = Get.put(Math());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Observer(builder: (_) {
                return Container(
                  color: Colors.amberAccent,
                  width: double.infinity,
                  child: Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Visibility(
                        visible: _math.firstValue != null && _math.firstValue != 0,
                        child: Text(_math.firstValue?.formatBr() ?? '',
                            style: const TextStyle(fontSize: 24),
                            textAlign: TextAlign.right,
                        ),
                      ),
                      Text(_math.display,
                          style: const TextStyle(fontSize: 48),
                          textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                );
              }),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: ClearButton()),
                    Expanded(child: BackSpaceButton()),
                    Expanded(child: PercentButton()),
                    Expanded(child: DivideButton()),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(child: NumberButton(number: 7)),
                    Expanded(child: NumberButton(number: 8)),
                    Expanded(child: NumberButton(number: 9)),
                    Expanded(child: MultiplyButton()),
                  ],
                ),
              ),
               Expanded(
                child: Row(
                  children: [
                    Expanded(child: NumberButton(number: 4)),
                    Expanded(child: NumberButton(number: 5)),
                    Expanded(child: NumberButton(number: 6)),
                    Expanded(child: SubtractButton()),
                  ],
                ),
              ),
               Expanded(
                child: Row(
                  children: [
                    Expanded(child: NumberButton(number: 1)),
                    Expanded(child: NumberButton(number: 2)),
                    Expanded(child: NumberButton(number: 3)),
                    Expanded(child: AddButton()),
                  ],
                ),
              ),
               Expanded(
                child: Row(
                  children: [

                    Flexible(flex: 2, child: NumberButton(number: 0)),
                    Flexible(flex: 1, child: CommaButton()),
                    Flexible(flex: 1, child: EqualsButton()),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
