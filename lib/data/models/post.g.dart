// GENERATED CODE - DO NOT MODIFY BY HAND

part of post;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Post> _$postSerializer = new _$PostSerializer();

class _$PostSerializer implements StructuredSerializer<Post> {
  @override
  final Iterable<Type> types = const [Post, _$Post];
  @override
  final String wireName = 'Post';

  @override
  Iterable<Object?> serialize(Serializers serializers, Post object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'user',
      serializers.serialize(object.user, specifiedType: const FullType(User)),
      'topic',
      serializers.serialize(object.topic, specifiedType: const FullType(Topic)),
      'poll',
      serializers.serialize(object.poll, specifiedType: const FullType(Poll)),
      'comments',
      serializers.serialize(object.comments,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Comment)])),
    ];

    return result;
  }

  @override
  Post deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(User))! as User);
          break;
        case 'topic':
          result.topic.replace(serializers.deserialize(value,
              specifiedType: const FullType(Topic))! as Topic);
          break;
        case 'poll':
          result.poll.replace(serializers.deserialize(value,
              specifiedType: const FullType(Poll))! as Poll);
          break;
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Comment)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Post extends Post {
  @override
  final String date;
  @override
  final User user;
  @override
  final Topic topic;
  @override
  final Poll poll;
  @override
  final BuiltList<Comment> comments;

  factory _$Post([void Function(PostBuilder)? updates]) =>
      (new PostBuilder()..update(updates)).build();

  _$Post._(
      {required this.date,
      required this.user,
      required this.topic,
      required this.poll,
      required this.comments})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(date, 'Post', 'date');
    BuiltValueNullFieldError.checkNotNull(user, 'Post', 'user');
    BuiltValueNullFieldError.checkNotNull(topic, 'Post', 'topic');
    BuiltValueNullFieldError.checkNotNull(poll, 'Post', 'poll');
    BuiltValueNullFieldError.checkNotNull(comments, 'Post', 'comments');
  }

  @override
  Post rebuild(void Function(PostBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostBuilder toBuilder() => new PostBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Post &&
        date == other.date &&
        user == other.user &&
        topic == other.topic &&
        poll == other.poll &&
        comments == other.comments;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, date.hashCode), user.hashCode), topic.hashCode),
            poll.hashCode),
        comments.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Post')
          ..add('date', date)
          ..add('user', user)
          ..add('topic', topic)
          ..add('poll', poll)
          ..add('comments', comments))
        .toString();
  }
}

class PostBuilder implements Builder<Post, PostBuilder> {
  _$Post? _$v;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  TopicBuilder? _topic;
  TopicBuilder get topic => _$this._topic ??= new TopicBuilder();
  set topic(TopicBuilder? topic) => _$this._topic = topic;

  PollBuilder? _poll;
  PollBuilder get poll => _$this._poll ??= new PollBuilder();
  set poll(PollBuilder? poll) => _$this._poll = poll;

  ListBuilder<Comment>? _comments;
  ListBuilder<Comment> get comments =>
      _$this._comments ??= new ListBuilder<Comment>();
  set comments(ListBuilder<Comment>? comments) => _$this._comments = comments;

  PostBuilder();

  PostBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _user = $v.user.toBuilder();
      _topic = $v.topic.toBuilder();
      _poll = $v.poll.toBuilder();
      _comments = $v.comments.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Post other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Post;
  }

  @override
  void update(void Function(PostBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Post build() {
    _$Post _$result;
    try {
      _$result = _$v ??
          new _$Post._(
              date: BuiltValueNullFieldError.checkNotNull(date, 'Post', 'date'),
              user: user.build(),
              topic: topic.build(),
              poll: poll.build(),
              comments: comments.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
        _$failedField = 'topic';
        topic.build();
        _$failedField = 'poll';
        poll.build();
        _$failedField = 'comments';
        comments.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Post', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
