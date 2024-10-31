import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:equatable/equatable.dart';

class TaskEntity extends Equatable {
  const TaskEntity._({
    required this.description,
    required this.title,
    required this.emoji,
    required this.date,
  });

  factory TaskEntity.create({
    required String title,
    required String description,
    required Emoji emoji,
    required DateTime date,
  }) =>
      TaskEntity._(
        description: description,
        title: title,
        emoji: emoji,
        date: date,
      );

  final String title;
  final String description;
  final Emoji emoji;
  final DateTime date;

  @override
  List<Object?> get props => [
        title,
        description,
        emoji,
        date,
      ];
}
