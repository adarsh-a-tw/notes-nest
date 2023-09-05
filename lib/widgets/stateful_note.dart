import 'package:flutter/material.dart';

class StatefulNote extends StatefulWidget {
  const StatefulNote({
    super.key,
    required this.content,
  });

  final String content;

  @override
  State<StatefulNote> createState() => _StatefulNoteState();
}

class _StatefulNoteState extends State<StatefulNote> {
  late bool _completed;

  @override
  void initState() {
    super.initState();
    _completed = false;
  }

  void _toggleCompleted() {
    setState(() {
      _completed = !_completed;
    });
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
            widget.content,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  decoration: _completed ? TextDecoration.lineThrough : null,
                ),
          ),
        ),
      ),
    );
  }
}
