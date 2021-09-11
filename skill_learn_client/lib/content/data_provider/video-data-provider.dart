import 'dart:convert';

import 'package:skill_learn_client/content/models/video.dart';
import 'package:http/http.dart' as http;

class VideoDataProvider {
  static final String _baseURL = "http://localhost:3000/api/videos";

  Future<Video> create(Video video) async {
    final http.Response response = await http.post(Uri.parse(_baseURL),
    headers: <String, String>{"Content-Type" : "application/json"},
    body: jsonEncode({
      "title": video.title,
      "description": video.description,
      "creator": video.creator,
      "link": video.link,
    })
    );

    if (response.statusCode == 201){
      return Video.fromJson(jsonDecode(response.body));
    }
    {
      throw Exception("Failed to create video");
    }
    
  }

  Future<Video> fetchByCreator() async {
    final response = await http.get(Uri.parse(_baseURL));

    if (response.statusCode == 200){
      return Video.fromJson(jsonDecode(response.body));
    }
    else{
      throw Exception("Fetching creator's video failed");
    }
  }
  Future<List<Video>> fetchAll() async {
    final response = await http.get(Uri.parse(_baseURL));

    if (response.statusCode == 200){
      final videos = jsonDecode(response.body) as List;
      return videos.map((e) => Video.fromJson(e)).toList();
    }
    else{
      throw Exception("Fetching videos failed");
    }
  }
  Future<Video> update(int id, Video video) async {
    final response = await http.put(Uri.parse("$_baseURL/$id"),
        headers: <String, String>{"Content-Type": "application/json"},
        body: jsonEncode({
          
          "title": video.title,
          "description": video.description,
          "creator": video.creator,
          "link": video.link,
        }));

    if (response.statusCode == 200) {
      return Video.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Could not update the video");
    }
  }

  Future<void> delete(int id) async {
    final response = await http.delete(Uri.parse("$_baseURL/$id"));
    if (response.statusCode != 204) {
      throw Exception("Field to delete the video");
    }
  }
}