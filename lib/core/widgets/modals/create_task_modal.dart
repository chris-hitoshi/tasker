import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tasker/core/extensions/context_extensions.dart';
import 'package:tasker/core/widgets/buttons/modal_cancel_button.dart';
import 'package:tasker/core/widgets/buttons/modal_date_icon_button.dart';
import 'package:tasker/core/widgets/buttons/modal_icon_button.dart';

class CreateTaskModal extends StatelessWidget {
  const CreateTaskModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: const Color(0xFFFFFFFF),
      surfaceTintColor: Colors.transparent,
      child: SizedBox(
        height: context.height * 0.4,
        width: context.width * 0.75,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Adicionar nova tarefa',
                    style: context.fontStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const Gap(24),
                      Expanded(
                        child: Column(
                          children: [
                            TextField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'O que vou quero fazer...',
                                isDense: true,
                              ),
                              style: context.fontStyle.copyWith(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            TextField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Adicionar descrição...',
                              ),
                              maxLines: null,
                              style: context.fontStyle.copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ModalDateIconButton(
                    label: 'Data limite',
                    onPressed: () {
                      debugPrint('clicou na data');
                    },
                  ),
                  Row(
                    children: [
                      ModalCancelButton(
                        onPressed: () => Navigator.pop(context),
                      ),
                      const Gap(16),
                      ModalIconButton.add(onPressed: () {}),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
