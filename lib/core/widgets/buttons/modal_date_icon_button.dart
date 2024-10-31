import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:tasker/core/extensions/context_extensions.dart';

class ModalDateIconButton extends StatelessWidget {
  const ModalDateIconButton({
    required this.onPressed,
    required this.label,
    super.key,
  });

  final VoidCallback onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(10),
      strokeWidth: 2,
      color: context.grey,
      dashPattern: const [4],
      child: TextButton.icon(
        onPressed: onPressed,
        icon: const Icon(Icons.add_rounded),
        label: Text(
          label,
          style: context.fontStyle,
        ),
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
          overlayColor: MaterialStatePropertyAll(context.lightGrey),
          foregroundColor: const MaterialStatePropertyAll(Colors.black),
        ),
      ),
    );
  }
}
