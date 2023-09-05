import 'package:flutter/material.dart';

// This widget should not be used.
// ignore: must_be_immutable
class NoteStateless extends StatelessWidget {
  NoteStateless({
    super.key,
    required this.content,
  });

  final String content;
  bool _completed = false;

  void _toggleCompleted() {
    _completed = !_completed;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: _toggleCompleted,
      child: Card(
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
        color: _completed ? Colors.grey[200] : Theme.of(context).cardColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Text(
            content,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  decoration: _completed ? TextDecoration.lineThrough : null,
                ),
          ),
        ),
      ),
    );
  }
}
