import 'package:flutter/material.dart';

final String tableNotes = 'notes';

class NoteFields {
  static final String id = '_id';
  static final String title = 'title';
  static final String description = 'description';
  static final String time = 'time';
}

class NoteModel {
  final int? id;
  final String? title;
  final String description;
  final DateTime createdTime;

  NoteModel(this.id, this.title, this.description, this.createdTime);

  NoteModel copy({
    int? id,
    String? title,
    String? description,
    DateTime? createdTime,
  }) =>
      NoteModel(id ?? this.id, this.title, this.description, this.createdTime);

  Map<String, Object?> toJson() => {
        NoteFields.id: id,
        NoteFields.title: title,
        NoteFields.description: description,
        NoteFields.time: createdTime.toIso8601String(),
      };
}
