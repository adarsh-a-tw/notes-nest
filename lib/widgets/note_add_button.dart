import 'package:flutter/material.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({
    super.key,
    required this.onPressed,
  });

  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      onPressed: onPressed,
      tooltip: 'Increment',
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 3,
              offset: const Offset(-3, 1),
            )
          ],
        ),
        child: const Icon(
          Icons.add,
          size: 32,
        ),
      ),
    );
  }
}
