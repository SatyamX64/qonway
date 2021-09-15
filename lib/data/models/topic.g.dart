// GENERATED CODE - DO NOT MODIFY BY HAND

part of topic;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Topic> _$topicSerializer = new _$TopicSerializer();

class _$TopicSerializer implements StructuredSerializer<Topic> {
  @override
  final Iterable<Type> types = const [Topic, _$Topic];
  @override
  final String wireName = 'Topic';

  @override
  Iterable<Object?> serialize(Serializers serializers, Topic object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'thumbnail',
      serializers.serialize(object.thumbnail,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Topic deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TopicBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'thumbnail':
          result.thumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Topic extends Topic {
  @override
  final String thumbnail;
  @override
  final String title;

  factory _$Topic([void Function(TopicBuilder)? updates]) =>
      (new TopicBuilder()..update(updates)).build();

  _$Topic._({required this.thumbnail, required this.title}) : super._() {
    BuiltValueNullFieldError.checkNotNull(thumbnail, 'Topic', 'thumbnail');
    BuiltValueNullFieldError.checkNotNull(title, 'Topic', 'title');
  }

  @override
  Topic rebuild(void Function(TopicBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TopicBuilder toBuilder() => new TopicBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Topic &&
        thumbnail == other.thumbnail &&
        title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, thumbnail.hashCode), title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Topic')
          ..add('thumbnail', thumbnail)
          ..add('title', title))
        .toString();
  }
}

class TopicBuilder implements Builder<Topic, TopicBuilder> {
  _$Topic? _$v;

  String? _thumbnail;
  String? get thumbnail => _$this._thumbnail;
  set thumbnail(String? thumbnail) => _$this._thumbnail = thumbnail;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  TopicBuilder();

  TopicBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _thumbnail = $v.thumbnail;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Topic other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Topic;
  }

  @override
  void update(void Function(TopicBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Topic build() {
    final _$result = _$v ??
        new _$Topic._(
            thumbnail: BuiltValueNullFieldError.checkNotNull(
                thumbnail, 'Topic', 'thumbnail'),
            title:
                BuiltValueNullFieldError.checkNotNull(title, 'Topic', 'title'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
