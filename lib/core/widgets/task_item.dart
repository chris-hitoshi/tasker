import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tasker/core/domain/entities/task_entity.dart';
import 'package:tasker/core/extensions/context_extensions.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({required this.task, required this.onEdit, super.key});

  final TaskEntity task;
  final VoidCallback onEdit;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.lightGrey,
        border: Border.all(
          color: context.grey,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      width: context.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: context.grey,
                    ),
                    child: EmojiCell(
                      emoji: task.emoji,
                      emojiSize: 25,
                      emojiBoxSize: 25,
                      buttonMode: ButtonMode.MATERIAL,
                      enableSkinTones: true,
                      textStyle: context.fontStyle,
                      skinToneIndicatorColor: Colors.black,
                      onEmojiSelected: (category, emoji) {},
                    ),
                  ),
                  const Gap(13),
                  Text(
                    task.title,
                    style: context.fontStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: onEdit,
              child: const Icon(
                Icons.edit_outlined,
                color: Colors.black54,
                size: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
