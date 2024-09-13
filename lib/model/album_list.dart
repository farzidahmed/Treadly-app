// To parse this JSON data, do
//
//     final albumsModel = albumsModelFromMap(jsonString);

import 'dart:convert';

List<AlbumsModel> albumsModelFromMap(dynamic str) => List<AlbumsModel>.from((str as dynamic).map((x) => AlbumsModel.fromMap(x)));

String albumsModelToMap(List<AlbumsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class AlbumsModel {
  int? userId;
  int? id;
  String? title;

  AlbumsModel({
    this.userId,
    this.id,
    this.title,
  });

  factory AlbumsModel.fromMap(Map<String, dynamic> json) => AlbumsModel(
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
