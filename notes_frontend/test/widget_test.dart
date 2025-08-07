import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:notes_frontend/main.dart';

void main() {
  testWidgets('Minimal smoke test for Universal Notes app loads', (WidgetTester tester) async {
    await tester.pumpWidget(const NotesApp());

    // AppBar with "My Notes" title
    expect(find.text('My Notes'), findsOneWidget);
    // FloatingActionButton present
    expect(find.byIcon(Icons.add), findsOneWidget);
    // Category chips should appear, including "All"
    expect(find.text('All'), findsOneWidget);
  });
}
