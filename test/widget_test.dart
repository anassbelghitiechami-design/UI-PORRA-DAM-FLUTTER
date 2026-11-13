import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:porra_dam/main.dart';

void main() {
  testWidgets('La app arranca', (tester) async {
    await tester.pumpWidget(const PorraDamApp());
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
