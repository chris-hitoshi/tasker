import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tasker/core/domain/entities/task_entity.dart';
import 'package:tasker/core/extensions/context_extensions.dart';
import 'package:tasker/core/widgets/buttons/new_task_button.dart';
import 'package:tasker/core/widgets/modals/create_task_modal.dart';
import 'package:tasker/core/widgets/task_item.dart';
import 'package:tasker/mocks/list_tasks.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final List<TaskEntity> list = listTaskMock;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 200),
        child: Column(
          children: [
            NewTaskButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => const CreateTaskModal(),
                );
              },
            ),
            const Gap(50),
            SizedBox(
              height: context.height * 0.5,
              child: ListView.separated(
                itemBuilder: (context, index) {
                  final item = list[index];
                  return TaskItem(
                    onEdit: () {},
                    task: TaskEntity.create(
                      description: item.description,
                      title: item.title,
                      emoji: item.emoji,
                      date: item.date,
                    ),
                  );
                },
                itemCount: list.length,
                separatorBuilder: (context, index) => const Gap(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
