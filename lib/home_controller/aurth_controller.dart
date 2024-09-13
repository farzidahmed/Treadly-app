import 'dart:convert';
import 'package:get/get.dart';
import 'package:list_json/model/album_list.dart';
import '../model/album_result.dart';
import '../model/login_model.dart';
import 'package:http/http.dart' as http;

class AurthController extends GetxController {

  Albums? albumsrespose;

  /*Future<Albums?> fetchAlbum() async {
    final response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/albums/1"));
    *//*print(response.body);
    print("Respose");*//*
    update();
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
     *//* print(response.body);
      print('This is response body');*//*
    return  albumsrespose= Albums.fromMap(jsonDecode(response.body) as Map<String, dynamic>);

    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }*/



     List<AlbumsModel>? albumsList;
  Future<AlbumsModel?> fetchAlbumList()async  {
    final response = await  http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    if (response.statusCode == 200) {

      var responseData = jsonDecode(response.body);
      albumsList =albumsModelFromMap(responseData);
      print(albumsList);
      print("albumsList=== here");

    } else {
      throw Exception('Failed to load album');
    }

  }

  }



