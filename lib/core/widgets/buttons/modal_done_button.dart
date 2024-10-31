import 'package:flutter/material.dart';
import 'package:tasker/core/extensions/context_extensions.dart';

class ModalDoneButton extends StatelessWidget {
  const ModalDoneButton({required this.onPressed, super.key});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: const MaterialStatePropertyAll(
          EdgeInsets.all(16),
        ),
        backgroundColor: MaterialStatePropertyAll(context.green),
        shape: const MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
      child: Text(
        'Concluir',
        style: context.fontStyle.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
