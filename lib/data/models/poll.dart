library poll;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

import 'serializers/serializers.dart';

part 'poll.g.dart';

abstract class Poll implements Built<Poll, PollBuilder> {
  String get question;
  String get timeLeft;

  BuiltList<String> get options;

  Poll._();

  factory Poll([updates(PollBuilder b)]) = _$Poll;

  String toJson() {
    return json.encode(serializers.serializeWith(Poll.serializer, this));
  }

  static Poll fromJson(String jsonString) {
    return serializers.deserializeWith(
        Poll.serializer, json.decode(jsonString))!;
  }

  static Serializer<Poll> get serializer => _$pollSerializer;
}
