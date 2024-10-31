import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tasker/core/extensions/context_extensions.dart';

class NewTaskButton extends StatelessWidget {
  const NewTaskButton({
    required this.onPressed,
    super.key,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(10),
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: const Radius.circular(10),
        strokeWidth: 2,
        color: context.grey,
        dashPattern: const [4],
        child: Container(
          color: context.lightGrey,
          width: context.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              children: [
                const Icon(Icons.add, color: Colors.black),
                const Gap(20),
                Text(
                  'Nova tarefa',
                  style: context.fontStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
