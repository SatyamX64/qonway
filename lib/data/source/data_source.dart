import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:qonway/data/models/models.dart';

class DataSource {
  Future<List<Post>> getPosts() async {
    final jsonStr = await rootBundle.loadString('assets/data.json');
    final jsonData = jsonDecode(jsonStr);
    final List<Post> postList = (jsonData['posts'] as List)
        .map(
          (e) => Post.fromJson(
            jsonEncode(e),
          ),
        )
        .toList();
    await Future.delayed(Duration(seconds: 1));
    return postList;
  }
  
}
