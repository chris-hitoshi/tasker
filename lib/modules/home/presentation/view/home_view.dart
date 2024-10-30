import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tasker/core/widgets/new_task_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          NewTaskButton(onPressed: () {}),
          const Gap(50),
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemBuilder: (context, index) => const Card(child: Text('item')),
              itemCount: 4,
            ),
          )
        ],
      ),
    );
  }
}
