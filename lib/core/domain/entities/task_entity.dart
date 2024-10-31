import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:equatable/equatable.dart';

class TaskEntity extends Equatable {
  const TaskEntity._({
    required this.description,
    required this.title,
    required this.emoji,
    required this.date,
    required this.isDone,
  });

  factory TaskEntity.create({
    required String title,
    required String description,
    required Emoji emoji,
    required DateTime date,
    required bool isDone,
  }) =>
      TaskEntity._(
        description: description,
        title: title,
        emoji: emoji,
        date: date,
        isDone: isDone,
      );

  final String title;
  final String description;
  final Emoji emoji;
  final DateTime date;
  final bool isDone;

  @override
  List<Object?> get props => [
        title,
        description,
        emoji,
        date,
        isDone,
      ];
}
