import 'package:flutter/material.dart';
import 'package:notes_app/screens/notes_page.dart';

void main() {
  runApp(const NotesApp());
}

const appName = "Note Nest";

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Color.fromRGBO(0, 116, 116, 1),
        ),
        cardColor: const Color.fromRGBO(182, 212, 213, 1),
        useMaterial3: true,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Colors.white,
          backgroundColor: Color.fromRGBO(0, 116, 116, 1),
          shape: CircleBorder(),
        ),
      ),
      home: const NotesPage(title: appName),
    );
  }
}
