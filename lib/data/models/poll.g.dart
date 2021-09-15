// GENERATED CODE - DO NOT MODIFY BY HAND

part of poll;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Poll> _$pollSerializer = new _$PollSerializer();

class _$PollSerializer implements StructuredSerializer<Poll> {
  @override
  final Iterable<Type> types = const [Poll, _$Poll];
  @override
  final String wireName = 'Poll';

  @override
  Iterable<Object?> serialize(Serializers serializers, Poll object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'question',
      serializers.serialize(object.question,
          specifiedType: const FullType(String)),
      'timeLeft',
      serializers.serialize(object.timeLeft,
          specifiedType: const FullType(String)),
      'options',
      serializers.serialize(object.options,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  Poll deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PollBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'question':
          result.question = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'timeLeft':
          result.timeLeft = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'options':
          result.options.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Poll extends Poll {
  @override
  final String question;
  @override
  final String timeLeft;
  @override
  final BuiltList<String> options;

  factory _$Poll([void Function(PollBuilder)? updates]) =>
      (new PollBuilder()..update(updates)).build();

  _$Poll._(
      {required this.question, required this.timeLeft, required this.options})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(question, 'Poll', 'question');
    BuiltValueNullFieldError.checkNotNull(timeLeft, 'Poll', 'timeLeft');
    BuiltValueNullFieldError.checkNotNull(options, 'Poll', 'options');
  }

  @override
  Poll rebuild(void Function(PollBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PollBuilder toBuilder() => new PollBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Poll &&
        question == other.question &&
        timeLeft == other.timeLeft &&
        options == other.options;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, question.hashCode), timeLeft.hashCode), options.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Poll')
          ..add('question', question)
          ..add('timeLeft', timeLeft)
          ..add('options', options))
        .toString();
  }
}

class PollBuilder implements Builder<Poll, PollBuilder> {
  _$Poll? _$v;

  String? _question;
  String? get question => _$this._question;
  set question(String? question) => _$this._question = question;

  String? _timeLeft;
  String? get timeLeft => _$this._timeLeft;
  set timeLeft(String? timeLeft) => _$this._timeLeft = timeLeft;

  ListBuilder<String>? _options;
  ListBuilder<String> get options =>
      _$this._options ??= new ListBuilder<String>();
  set options(ListBuilder<String>? options) => _$this._options = options;

  PollBuilder();

  PollBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _question = $v.question;
      _timeLeft = $v.timeLeft;
      _options = $v.options.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Poll other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Poll;
  }

  @override
  void update(void Function(PollBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Poll build() {
    _$Poll _$result;
    try {
      _$result = _$v ??
          new _$Poll._(
              question: BuiltValueNullFieldError.checkNotNull(
                  question, 'Poll', 'question'),
              timeLeft: BuiltValueNullFieldError.checkNotNull(
                  timeLeft, 'Poll', 'timeLeft'),
              options: options.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'options';
        options.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Poll', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
