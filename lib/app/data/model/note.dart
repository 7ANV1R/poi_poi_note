import 'package:flutter/material.dart';

final String tableNotes = 'notes';

class NoteFields {
  static final List<String> values = [
    id,
    title,
    description,
    time,
  ];
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

  NoteModel({this.id, this.title, required this.description, required this.createdTime});

  NoteModel copy({
    int? id,
    String? title,
    String? description,
    DateTime? createdTime,
  }) =>
      NoteModel(
          id: id ?? this.id,
          title: title ?? this.title,
          description: description ?? this.description,
          createdTime: createdTime ?? this.createdTime);

  static NoteModel fromJson(Map<String, Object?> json) => NoteModel(
        id: json[NoteFields.id] as int?,
        title: json[NoteFields.id] as String?,
        description: json[NoteFields.description] as String,
        createdTime: DateTime.parse(json[NoteFields.time] as String),
      );

  Map<String, Object?> toJson() => {
        NoteFields.id: id,
        NoteFields.title: title,
        NoteFields.description: description,
        NoteFields.time: createdTime.toIso8601String(),
      };
}
