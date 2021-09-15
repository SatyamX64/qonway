library topic;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers/serializers.dart';

part 'topic.g.dart';

abstract class Topic implements Built<Topic, TopicBuilder> {
  String get thumbnail;
  String get title;

  Topic._();

  factory Topic([updates(TopicBuilder b)]) = _$Topic;

  String toJson() {
    return json.encode(serializers.serializeWith(Topic.serializer, this));
  }

  static Topic fromJson(String jsonString) {
    return serializers.deserializeWith(Topic.serializer, json.decode(jsonString))!;
  }

  static Serializer<Topic> get serializer => _$topicSerializer;
}