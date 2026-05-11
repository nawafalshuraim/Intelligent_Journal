import 'dart:convert';

import 'package:uuid/uuid.dart';

class Goal {
  final String id;
  final String title;
  final String description;
  final DateTime createdAt;

  Goal({
    required this.id,
    required this.title,
    this.description = '',
    required this.createdAt,
  });

  factory Goal.create({
    required String title,
    String description = '',
  }) {
    return Goal(
      id: const Uuid().v7(),
      title: title,
      description: description,
      createdAt: DateTime.now(),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'createdAt': createdAt.toIso8601String(),
  };

  factory Goal.fromJson(Map<String, dynamic> json) => Goal(
    id: json['id'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    createdAt: DateTime.parse(json['createdAt'] as String),
  );

  String toJsonString() => jsonEncode(toJson());

  factory Goal.fromJsonString(String s) =>
      Goal.fromJson(jsonDecode(s) as Map<String, dynamic>);
}
