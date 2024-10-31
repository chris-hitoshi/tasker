import 'package:flutter/material.dart';
import 'package:tasker/core/extensions/context_extensions.dart';

class ModalCancelButton extends StatelessWidget {
  const ModalCancelButton({required this.onPressed, super.key});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: const ButtonStyle(
        padding: MaterialStatePropertyAll(
          EdgeInsets.all(16),
        ),
        backgroundColor: MaterialStatePropertyAll(Colors.transparent),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
      child: Text(
        'Cancelar',
        style: context.fontStyle.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
