// To parse this JSON data, do
//
//     final albums = albumsFromMap(jsonString);

import 'dart:convert';

Albums albumsFromMap(dynamic str) => Albums.fromMap((str as dynamic));

String albumsToMap(Albums data) => json.encode(data.toMap());

class Albums {
  int? userId;
  int? id;
  String? title;

  Albums({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Albums.fromMap(Map<String, dynamic> json) => Albums(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
  );

  Map<String, dynamic> toMap() => {
    "userId": userId,
    "id": id,
    "title": title,
  };
}
