library comment;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:qonway/data/models/user.dart';

import 'serializers/serializers.dart';

part 'comment.g.dart';

abstract class Comment implements Built<Comment, CommentBuilder> {
  String get message;
  User get author;

  Comment._();

  factory Comment([updates(CommentBuilder b)]) = _$Comment;

  String toJson() {
    return json.encode(serializers.serializeWith(Comment.serializer, this));
  }

  static Comment fromJson(String jsonString) {
    return serializers.deserializeWith(Comment.serializer, json.decode(jsonString))!;
  }

  static Serializer<Comment> get serializer => _$commentSerializer;
}