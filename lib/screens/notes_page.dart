import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note.dart';
import 'package:notes_app/widgets/note_add_button.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key, required this.title});

  final String title;

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  late final List<String> _notes;

  @override
  void initState() {
    _notes = [
      "Go to the store",
      "Go to park",
      "Visit Dentist",
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _notes.length,
                itemBuilder: (ctx, ind) => Note(content: _notes[ind]),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: AddNoteButton(onPressed: () {}),
    );
  }
}
