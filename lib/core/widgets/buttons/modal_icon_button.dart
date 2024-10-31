import 'package:flutter/material.dart';
import 'package:tasker/core/extensions/context_extensions.dart';

class ModalIconButton extends StatelessWidget {
  const ModalIconButton._({
    required this.label,
    required this.icon,
    required this.onPressed,
  });

  factory ModalIconButton.add({required VoidCallback onPressed}) =>
      ModalIconButton._(
        label: 'Adicionar',
        icon: const Icon(Icons.add_rounded),
        onPressed: onPressed,
      );

  factory ModalIconButton.edit({required VoidCallback onPressed}) =>
      ModalIconButton._(
        label: 'Editar',
        icon: const Icon(Icons.edit_outlined),
        onPressed: onPressed,
      );

  final String label;
  final Icon icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: icon,
      label: Text(label),
      style: ButtonStyle(
        padding: const MaterialStatePropertyAll(
          EdgeInsets.all(16),
        ),
        foregroundColor: const MaterialStatePropertyAll(Colors.white),
        shape: const MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        backgroundColor: MaterialStatePropertyAll(context.blue),
        textStyle: MaterialStatePropertyAll(
          context.fontStyle.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
