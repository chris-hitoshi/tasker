import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:tasker/core/domain/entities/task_entity.dart';

List<TaskEntity> get listTaskMock => [
      TaskEntity.create(
        title: 'Tarefa de ADM',
        description: 'descrição da tarefa',
        emoji: const Emoji('emoji', ''),
        date: DateTime.now(),
      ),
      TaskEntity.create(
        title: 'Fazer lista de compras',
        description: 'descrição da tarefa',
        emoji: const Emoji('emoji', ''),
        date: DateTime.now(),
      ),
      TaskEntity.create(
        title: 'Dar comida para os cachorros',
        description: 'descrição da tarefa',
        emoji: const Emoji('emoji', ''),
        date: DateTime.now(),
      ),
      TaskEntity.create(
        title: 'Verificar com o Fulano sobre tal coisa',
        description: 'descrição da tarefa',
        emoji: const Emoji('emoji', ''),
        date: DateTime.now(),
      ),
    ];
