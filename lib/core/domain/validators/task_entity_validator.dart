import 'package:lucid_validation/lucid_validation.dart';
import 'package:tasker/core/domain/entities/task_entity.dart';

class TaskEntityValidator extends LucidValidator<TaskEntity> {
  TaskEntityValidator() {
    ruleFor((task) => task.title, key: 'title').notEmpty();
  }
}
