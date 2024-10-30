import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:tasker/core/extensions/context_extensions.dart';

class NewTaskButton extends StatelessWidget {
  const NewTaskButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(10),
      strokeWidth: 2,
      color: const Color(0x42585858),
      dashPattern: const [4],
      child: OutlinedButton.icon(
        onPressed: onPressed,
        icon: const Icon(Icons.add, color: Colors.black),
        label: Text(
          'Nova tarefa',
          style: context.fontStyle,
        ),
        style: const ButtonStyle(
          overlayColor: MaterialStatePropertyAll(
            Colors.transparent,
          ),
          backgroundColor: MaterialStatePropertyAll(
            Color(0x00585858),
          ),
          side: MaterialStatePropertyAll(
            BorderSide(
              style: BorderStyle.none,
            ),
          ),
        ),
      ),
    );
  }
}
