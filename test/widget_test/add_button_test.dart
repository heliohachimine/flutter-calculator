import 'package:calculator/components/add_button.dart';
import 'package:calculator/math.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mockito/mockito.dart';

import '../mocks/math_mock.mocks.dart';

void main() {
  setUp(() {
    Get.reset();
  });

  Widget createWidget() {
    return MaterialApp(
      home: Scaffold(
        body: AddButton(),
      ),
    );
  }

  testWidgets('Should contains the symbol "+"', (WidgetTester tester) async {
    final mockMath = MockMath();
    Get.put<Math>(mockMath);

    await tester.pumpWidget(createWidget());
    expect(find.text('+'), findsOneWidget);

  });

  testWidgets('Should call setOperation with Operation.add on tap', (WidgetTester tester) async {
    final mockMath = MockMath();
    Get.put<Math>(mockMath);

    await tester.pumpWidget(createWidget());

    final button = find.byType(InkWell).first;
    await tester.tap(button);
    await tester.pump();
    verify(mockMath.setOperation(Operation.add)).called(1);
  });
}
