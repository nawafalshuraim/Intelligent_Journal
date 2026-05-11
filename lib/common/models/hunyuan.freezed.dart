// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hunyuan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PublicHeader _$PublicHeaderFromJson(Map<String, dynamic> json) {
  return _PublicHeader.fromJson(json);
}

/// @nodoc
mixin _$PublicHeader {
  @JsonKey(name: 'X-TC-Action')
  String? get action => throw _privateConstructorUsedError;
  @JsonKey(name: 'X-TC-Timestamp')
  int? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'X-TC-Version')
  String? get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'Authorization')
  String? get authorization => throw _privateConstructorUsedError;

  /// Serializes this PublicHeader to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PublicHeader
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PublicHeaderCopyWith<PublicHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicHeaderCopyWith<$Res> {
  factory $PublicHeaderCopyWith(
    PublicHeader value,
    $Res Function(PublicHeader) then,
  ) = _$PublicHeaderCopyWithImpl<$Res, PublicHeader>;
  @useResult
  $Res call({
    @JsonKey(name: 'X-TC-Action') String? action,
    @JsonKey(name: 'X-TC-Timestamp') int? timestamp,
    @JsonKey(name: 'X-TC-Version') String? version,
    @JsonKey(name: 'Authorization') String? authorization,
  });
}

/// @nodoc
class _$PublicHeaderCopyWithImpl<$Res, $Val extends PublicHeader>
    implements $PublicHeaderCopyWith<$Res> {
  _$PublicHeaderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PublicHeader
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? timestamp = freezed,
    Object? version = freezed,
    Object? authorization = freezed,
  }) {
    return _then(
      _value.copyWith(
            action:
                freezed == action
                    ? _value.action
                    : action // ignore: cast_nullable_to_non_nullable
                        as String?,
            timestamp:
                freezed == timestamp
                    ? _value.timestamp
                    : timestamp // ignore: cast_nullable_to_non_nullable
                        as int?,
            version:
                freezed == version
                    ? _value.version
                    : version // ignore: cast_nullable_to_non_nullable
                        as String?,
            authorization:
                freezed == authorization
                    ? _value.authorization
                    : authorization // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PublicHeaderImplCopyWith<$Res>
    implements $PublicHeaderCopyWith<$Res> {
  factory _$$PublicHeaderImplCopyWith(
    _$PublicHeaderImpl value,
    $Res Function(_$PublicHeaderImpl) then,
  ) = __$$PublicHeaderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'X-TC-Action') String? action,
    @JsonKey(name: 'X-TC-Timestamp') int? timestamp,
    @JsonKey(name: 'X-TC-Version') String? version,
    @JsonKey(name: 'Authorization') String? authorization,
  });
}

/// @nodoc
class __$$PublicHeaderImplCopyWithImpl<$Res>
    extends _$PublicHeaderCopyWithImpl<$Res, _$PublicHeaderImpl>
    implements _$$PublicHeaderImplCopyWith<$Res> {
  __$$PublicHeaderImplCopyWithImpl(
    _$PublicHeaderImpl _value,
    $Res Function(_$PublicHeaderImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PublicHeader
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? timestamp = freezed,
    Object? version = freezed,
    Object? authorization = freezed,
  }) {
    return _then(
      _$PublicHeaderImpl(
        action:
            freezed == action
                ? _value.action
                : action // ignore: cast_nullable_to_non_nullable
                    as String?,
        timestamp:
            freezed == timestamp
                ? _value.timestamp
                : timestamp // ignore: cast_nullable_to_non_nullable
                    as int?,
        version:
            freezed == version
                ? _value.version
                : version // ignore: cast_nullable_to_non_nullable
                    as String?,
        authorization:
            freezed == authorization
                ? _value.authorization
                : authorization // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PublicHeaderImpl implements _PublicHeader {
  const _$PublicHeaderImpl({
    @JsonKey(name: 'X-TC-Action') this.action,
    @JsonKey(name: 'X-TC-Timestamp') this.timestamp,
    @JsonKey(name: 'X-TC-Version') this.version,
    @JsonKey(name: 'Authorization') this.authorization,
  });

  factory _$PublicHeaderImpl.fromJson(Map<String, dynamic> json) =>
      _$$PublicHeaderImplFromJson(json);

  @override
  @JsonKey(name: 'X-TC-Action')
  final String? action;
  @override
  @JsonKey(name: 'X-TC-Timestamp')
  final int? timestamp;
  @override
  @JsonKey(name: 'X-TC-Version')
  final String? version;
  @override
  @JsonKey(name: 'Authorization')
  final String? authorization;

  @override
  String toString() {
    return 'PublicHeader(action: $action, timestamp: $timestamp, version: $version, authorization: $authorization)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PublicHeaderImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.authorization, authorization) ||
                other.authorization == authorization));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, action, timestamp, version, authorization);

  /// Create a copy of PublicHeader
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicHeaderImplCopyWith<_$PublicHeaderImpl> get copyWith =>
      __$$PublicHeaderImplCopyWithImpl<_$PublicHeaderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PublicHeaderImplToJson(this);
  }
}

abstract class _PublicHeader implements PublicHeader {
  const factory _PublicHeader({
    @JsonKey(name: 'X-TC-Action') final String? action,
    @JsonKey(name: 'X-TC-Timestamp') final int? timestamp,
    @JsonKey(name: 'X-TC-Version') final String? version,
    @JsonKey(name: 'Authorization') final String? authorization,
  }) = _$PublicHeaderImpl;

  factory _PublicHeader.fromJson(Map<String, dynamic> json) =
      _$PublicHeaderImpl.fromJson;

  @override
  @JsonKey(name: 'X-TC-Action')
  String? get action;
  @override
  @JsonKey(name: 'X-TC-Timestamp')
  int? get timestamp;
  @override
  @JsonKey(name: 'X-TC-Version')
  String? get version;
  @override
  @JsonKey(name: 'Authorization')
  String? get authorization;

  /// Create a copy of PublicHeader
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PublicHeaderImplCopyWith<_$PublicHeaderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  @JsonKey(name: 'Role')
  String get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'Content')
  String get content => throw _privateConstructorUsedError;

  /// Serializes this Message to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call({
    @JsonKey(name: 'Role') String role,
    @JsonKey(name: 'Content') String content,
  });
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? role = null, Object? content = null}) {
    return _then(
      _value.copyWith(
            role:
                null == role
                    ? _value.role
                    : role // ignore: cast_nullable_to_non_nullable
                        as String,
            content:
                null == content
                    ? _value.content
                    : content // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MessageImplCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$MessageImplCopyWith(
    _$MessageImpl value,
    $Res Function(_$MessageImpl) then,
  ) = __$$MessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'Role') String role,
    @JsonKey(name: 'Content') String content,
  });
}

/// @nodoc
class __$$MessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$MessageImpl>
    implements _$$MessageImplCopyWith<$Res> {
  __$$MessageImplCopyWithImpl(
    _$MessageImpl _value,
    $Res Function(_$MessageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? role = null, Object? content = null}) {
    return _then(
      _$MessageImpl(
        role:
            null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                    as String,
        content:
            null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageImpl implements _Message {
  const _$MessageImpl({
    @JsonKey(name: 'Role') required this.role,
    @JsonKey(name: 'Content') required this.content,
  });

  factory _$MessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageImplFromJson(json);

  @override
  @JsonKey(name: 'Role')
  final String role;
  @override
  @JsonKey(name: 'Content')
  final String content;

  @override
  String toString() {
    return 'Message(role: $role, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, role, content);

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      __$$MessageImplCopyWithImpl<_$MessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageImplToJson(this);
  }
}

abstract class _Message implements Message {
  const factory _Message({
    @JsonKey(name: 'Role') required final String role,
    @JsonKey(name: 'Content') required final String content,
  }) = _$MessageImpl;

  factory _Message.fromJson(Map<String, dynamic> json) = _$MessageImpl.fromJson;

  @override
  @JsonKey(name: 'Role')
  String get role;
  @override
  @JsonKey(name: 'Content')
  String get content;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HunyuanResponse _$HunyuanResponseFromJson(Map<String, dynamic> json) {
  return _HunyuanResponse.fromJson(json);
}

/// @nodoc
mixin _$HunyuanResponse {
  @JsonKey(name: 'Note')
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: 'Choices')
  List<Choices>? get choices => throw _privateConstructorUsedError;
  @JsonKey(name: 'Created')
  int? get created => throw _privateConstructorUsedError;
  @JsonKey(name: 'Id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Usage')
  Usage? get usage => throw _privateConstructorUsedError;

  /// Serializes this HunyuanResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HunyuanResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HunyuanResponseCopyWith<HunyuanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HunyuanResponseCopyWith<$Res> {
  factory $HunyuanResponseCopyWith(
    HunyuanResponse value,
    $Res Function(HunyuanResponse) then,
  ) = _$HunyuanResponseCopyWithImpl<$Res, HunyuanResponse>;
  @useResult
  $Res call({
    @JsonKey(name: 'Note') String? note,
    @JsonKey(name: 'Choices') List<Choices>? choices,
    @JsonKey(name: 'Created') int? created,
    @JsonKey(name: 'Id') String? id,
    @JsonKey(name: 'Usage') Usage? usage,
  });

  $UsageCopyWith<$Res>? get usage;
}

/// @nodoc
class _$HunyuanResponseCopyWithImpl<$Res, $Val extends HunyuanResponse>
    implements $HunyuanResponseCopyWith<$Res> {
  _$HunyuanResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HunyuanResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = freezed,
    Object? choices = freezed,
    Object? created = freezed,
    Object? id = freezed,
    Object? usage = freezed,
  }) {
    return _then(
      _value.copyWith(
            note:
                freezed == note
                    ? _value.note
                    : note // ignore: cast_nullable_to_non_nullable
                        as String?,
            choices:
                freezed == choices
                    ? _value.choices
                    : choices // ignore: cast_nullable_to_non_nullable
                        as List<Choices>?,
            created:
                freezed == created
                    ? _value.created
                    : created // ignore: cast_nullable_to_non_nullable
                        as int?,
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            usage:
                freezed == usage
                    ? _value.usage
                    : usage // ignore: cast_nullable_to_non_nullable
                        as Usage?,
          )
          as $Val,
    );
  }

  /// Create a copy of HunyuanResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UsageCopyWith<$Res>? get usage {
    if (_value.usage == null) {
      return null;
    }

    return $UsageCopyWith<$Res>(_value.usage!, (value) {
      return _then(_value.copyWith(usage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HunyuanResponseImplCopyWith<$Res>
    implements $HunyuanResponseCopyWith<$Res> {
  factory _$$HunyuanResponseImplCopyWith(
    _$HunyuanResponseImpl value,
    $Res Function(_$HunyuanResponseImpl) then,
  ) = __$$HunyuanResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'Note') String? note,
    @JsonKey(name: 'Choices') List<Choices>? choices,
    @JsonKey(name: 'Created') int? created,
    @JsonKey(name: 'Id') String? id,
    @JsonKey(name: 'Usage') Usage? usage,
  });

  @override
  $UsageCopyWith<$Res>? get usage;
}

/// @nodoc
class __$$HunyuanResponseImplCopyWithImpl<$Res>
    extends _$HunyuanResponseCopyWithImpl<$Res, _$HunyuanResponseImpl>
    implements _$$HunyuanResponseImplCopyWith<$Res> {
  __$$HunyuanResponseImplCopyWithImpl(
    _$HunyuanResponseImpl _value,
    $Res Function(_$HunyuanResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HunyuanResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = freezed,
    Object? choices = freezed,
    Object? created = freezed,
    Object? id = freezed,
    Object? usage = freezed,
  }) {
    return _then(
      _$HunyuanResponseImpl(
        note:
            freezed == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                    as String?,
        choices:
            freezed == choices
                ? _value._choices
                : choices // ignore: cast_nullable_to_non_nullable
                    as List<Choices>?,
        created:
            freezed == created
                ? _value.created
                : created // ignore: cast_nullable_to_non_nullable
                    as int?,
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        usage:
            freezed == usage
                ? _value.usage
                : usage // ignore: cast_nullable_to_non_nullable
                    as Usage?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HunyuanResponseImpl implements _HunyuanResponse {
  const _$HunyuanResponseImpl({
    @JsonKey(name: 'Note') this.note,
    @JsonKey(name: 'Choices') final List<Choices>? choices,
    @JsonKey(name: 'Created') this.created,
    @JsonKey(name: 'Id') this.id,
    @JsonKey(name: 'Usage') this.usage,
  }) : _choices = choices;

  factory _$HunyuanResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HunyuanResponseImplFromJson(json);

  @override
  @JsonKey(name: 'Note')
  final String? note;
  final List<Choices>? _choices;
  @override
  @JsonKey(name: 'Choices')
  List<Choices>? get choices {
    final value = _choices;
    if (value == null) return null;
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'Created')
  final int? created;
  @override
  @JsonKey(name: 'Id')
  final String? id;
  @override
  @JsonKey(name: 'Usage')
  final Usage? usage;

  @override
  String toString() {
    return 'HunyuanResponse(note: $note, choices: $choices, created: $created, id: $id, usage: $usage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HunyuanResponseImpl &&
            (identical(other.note, note) || other.note == note) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.usage, usage) || other.usage == usage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    note,
    const DeepCollectionEquality().hash(_choices),
    created,
    id,
    usage,
  );

  /// Create a copy of HunyuanResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HunyuanResponseImplCopyWith<_$HunyuanResponseImpl> get copyWith =>
      __$$HunyuanResponseImplCopyWithImpl<_$HunyuanResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HunyuanResponseImplToJson(this);
  }
}

abstract class _HunyuanResponse implements HunyuanResponse {
  const factory _HunyuanResponse({
    @JsonKey(name: 'Note') final String? note,
    @JsonKey(name: 'Choices') final List<Choices>? choices,
    @JsonKey(name: 'Created') final int? created,
    @JsonKey(name: 'Id') final String? id,
    @JsonKey(name: 'Usage') final Usage? usage,
  }) = _$HunyuanResponseImpl;

  factory _HunyuanResponse.fromJson(Map<String, dynamic> json) =
      _$HunyuanResponseImpl.fromJson;

  @override
  @JsonKey(name: 'Note')
  String? get note;
  @override
  @JsonKey(name: 'Choices')
  List<Choices>? get choices;
  @override
  @JsonKey(name: 'Created')
  int? get created;
  @override
  @JsonKey(name: 'Id')
  String? get id;
  @override
  @JsonKey(name: 'Usage')
  Usage? get usage;

  /// Create a copy of HunyuanResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HunyuanResponseImplCopyWith<_$HunyuanResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Usage _$UsageFromJson(Map<String, dynamic> json) {
  return _Usage.fromJson(json);
}

/// @nodoc
mixin _$Usage {
  @JsonKey(name: 'PromptTokens')
  int? get promptTokens => throw _privateConstructorUsedError;
  @JsonKey(name: 'CompletionTokens')
  int? get completionTokens => throw _privateConstructorUsedError;
  @JsonKey(name: 'TotalTokens')
  int? get totalTokens => throw _privateConstructorUsedError;

  /// Serializes this Usage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Usage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsageCopyWith<Usage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsageCopyWith<$Res> {
  factory $UsageCopyWith(Usage value, $Res Function(Usage) then) =
      _$UsageCopyWithImpl<$Res, Usage>;
  @useResult
  $Res call({
    @JsonKey(name: 'PromptTokens') int? promptTokens,
    @JsonKey(name: 'CompletionTokens') int? completionTokens,
    @JsonKey(name: 'TotalTokens') int? totalTokens,
  });
}

/// @nodoc
class _$UsageCopyWithImpl<$Res, $Val extends Usage>
    implements $UsageCopyWith<$Res> {
  _$UsageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Usage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promptTokens = freezed,
    Object? completionTokens = freezed,
    Object? totalTokens = freezed,
  }) {
    return _then(
      _value.copyWith(
            promptTokens:
                freezed == promptTokens
                    ? _value.promptTokens
                    : promptTokens // ignore: cast_nullable_to_non_nullable
                        as int?,
            completionTokens:
                freezed == completionTokens
                    ? _value.completionTokens
                    : completionTokens // ignore: cast_nullable_to_non_nullable
                        as int?,
            totalTokens:
                freezed == totalTokens
                    ? _value.totalTokens
                    : totalTokens // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UsageImplCopyWith<$Res> implements $UsageCopyWith<$Res> {
  factory _$$UsageImplCopyWith(
    _$UsageImpl value,
    $Res Function(_$UsageImpl) then,
  ) = __$$UsageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'PromptTokens') int? promptTokens,
    @JsonKey(name: 'CompletionTokens') int? completionTokens,
    @JsonKey(name: 'TotalTokens') int? totalTokens,
  });
}

/// @nodoc
class __$$UsageImplCopyWithImpl<$Res>
    extends _$UsageCopyWithImpl<$Res, _$UsageImpl>
    implements _$$UsageImplCopyWith<$Res> {
  __$$UsageImplCopyWithImpl(
    _$UsageImpl _value,
    $Res Function(_$UsageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Usage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promptTokens = freezed,
    Object? completionTokens = freezed,
    Object? totalTokens = freezed,
  }) {
    return _then(
      _$UsageImpl(
        promptTokens:
            freezed == promptTokens
                ? _value.promptTokens
                : promptTokens // ignore: cast_nullable_to_non_nullable
                    as int?,
        completionTokens:
            freezed == completionTokens
                ? _value.completionTokens
                : completionTokens // ignore: cast_nullable_to_non_nullable
                    as int?,
        totalTokens:
            freezed == totalTokens
                ? _value.totalTokens
                : totalTokens // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UsageImpl implements _Usage {
  const _$UsageImpl({
    @JsonKey(name: 'PromptTokens') this.promptTokens,
    @JsonKey(name: 'CompletionTokens') this.completionTokens,
    @JsonKey(name: 'TotalTokens') this.totalTokens,
  });

  factory _$UsageImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsageImplFromJson(json);

  @override
  @JsonKey(name: 'PromptTokens')
  final int? promptTokens;
  @override
  @JsonKey(name: 'CompletionTokens')
  final int? completionTokens;
  @override
  @JsonKey(name: 'TotalTokens')
  final int? totalTokens;

  @override
  String toString() {
    return 'Usage(promptTokens: $promptTokens, completionTokens: $completionTokens, totalTokens: $totalTokens)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsageImpl &&
            (identical(other.promptTokens, promptTokens) ||
                other.promptTokens == promptTokens) &&
            (identical(other.completionTokens, completionTokens) ||
                other.completionTokens == completionTokens) &&
            (identical(other.totalTokens, totalTokens) ||
                other.totalTokens == totalTokens));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, promptTokens, completionTokens, totalTokens);

  /// Create a copy of Usage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsageImplCopyWith<_$UsageImpl> get copyWith =>
      __$$UsageImplCopyWithImpl<_$UsageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsageImplToJson(this);
  }
}

abstract class _Usage implements Usage {
  const factory _Usage({
    @JsonKey(name: 'PromptTokens') final int? promptTokens,
    @JsonKey(name: 'CompletionTokens') final int? completionTokens,
    @JsonKey(name: 'TotalTokens') final int? totalTokens,
  }) = _$UsageImpl;

  factory _Usage.fromJson(Map<String, dynamic> json) = _$UsageImpl.fromJson;

  @override
  @JsonKey(name: 'PromptTokens')
  int? get promptTokens;
  @override
  @JsonKey(name: 'CompletionTokens')
  int? get completionTokens;
  @override
  @JsonKey(name: 'TotalTokens')
  int? get totalTokens;

  /// Create a copy of Usage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsageImplCopyWith<_$UsageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Choices _$ChoicesFromJson(Map<String, dynamic> json) {
  return _Choices.fromJson(json);
}

/// @nodoc
mixin _$Choices {
  @JsonKey(name: 'FinishReason')
  String? get finishReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'Delta')
  Delta? get delta => throw _privateConstructorUsedError;

  /// Serializes this Choices to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Choices
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChoicesCopyWith<Choices> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoicesCopyWith<$Res> {
  factory $ChoicesCopyWith(Choices value, $Res Function(Choices) then) =
      _$ChoicesCopyWithImpl<$Res, Choices>;
  @useResult
  $Res call({
    @JsonKey(name: 'FinishReason') String? finishReason,
    @JsonKey(name: 'Delta') Delta? delta,
  });

  $DeltaCopyWith<$Res>? get delta;
}

/// @nodoc
class _$ChoicesCopyWithImpl<$Res, $Val extends Choices>
    implements $ChoicesCopyWith<$Res> {
  _$ChoicesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Choices
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? finishReason = freezed, Object? delta = freezed}) {
    return _then(
      _value.copyWith(
            finishReason:
                freezed == finishReason
                    ? _value.finishReason
                    : finishReason // ignore: cast_nullable_to_non_nullable
                        as String?,
            delta:
                freezed == delta
                    ? _value.delta
                    : delta // ignore: cast_nullable_to_non_nullable
                        as Delta?,
          )
          as $Val,
    );
  }

  /// Create a copy of Choices
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeltaCopyWith<$Res>? get delta {
    if (_value.delta == null) {
      return null;
    }

    return $DeltaCopyWith<$Res>(_value.delta!, (value) {
      return _then(_value.copyWith(delta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChoicesImplCopyWith<$Res> implements $ChoicesCopyWith<$Res> {
  factory _$$ChoicesImplCopyWith(
    _$ChoicesImpl value,
    $Res Function(_$ChoicesImpl) then,
  ) = __$$ChoicesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'FinishReason') String? finishReason,
    @JsonKey(name: 'Delta') Delta? delta,
  });

  @override
  $DeltaCopyWith<$Res>? get delta;
}

/// @nodoc
class __$$ChoicesImplCopyWithImpl<$Res>
    extends _$ChoicesCopyWithImpl<$Res, _$ChoicesImpl>
    implements _$$ChoicesImplCopyWith<$Res> {
  __$$ChoicesImplCopyWithImpl(
    _$ChoicesImpl _value,
    $Res Function(_$ChoicesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Choices
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? finishReason = freezed, Object? delta = freezed}) {
    return _then(
      _$ChoicesImpl(
        finishReason:
            freezed == finishReason
                ? _value.finishReason
                : finishReason // ignore: cast_nullable_to_non_nullable
                    as String?,
        delta:
            freezed == delta
                ? _value.delta
                : delta // ignore: cast_nullable_to_non_nullable
                    as Delta?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChoicesImpl implements _Choices {
  const _$ChoicesImpl({
    @JsonKey(name: 'FinishReason') this.finishReason,
    @JsonKey(name: 'Delta') this.delta,
  });

  factory _$ChoicesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChoicesImplFromJson(json);

  @override
  @JsonKey(name: 'FinishReason')
  final String? finishReason;
  @override
  @JsonKey(name: 'Delta')
  final Delta? delta;

  @override
  String toString() {
    return 'Choices(finishReason: $finishReason, delta: $delta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoicesImpl &&
            (identical(other.finishReason, finishReason) ||
                other.finishReason == finishReason) &&
            (identical(other.delta, delta) || other.delta == delta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, finishReason, delta);

  /// Create a copy of Choices
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoicesImplCopyWith<_$ChoicesImpl> get copyWith =>
      __$$ChoicesImplCopyWithImpl<_$ChoicesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoicesImplToJson(this);
  }
}

abstract class _Choices implements Choices {
  const factory _Choices({
    @JsonKey(name: 'FinishReason') final String? finishReason,
    @JsonKey(name: 'Delta') final Delta? delta,
  }) = _$ChoicesImpl;

  factory _Choices.fromJson(Map<String, dynamic> json) = _$ChoicesImpl.fromJson;

  @override
  @JsonKey(name: 'FinishReason')
  String? get finishReason;
  @override
  @JsonKey(name: 'Delta')
  Delta? get delta;

  /// Create a copy of Choices
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChoicesImplCopyWith<_$ChoicesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Delta _$DeltaFromJson(Map<String, dynamic> json) {
  return _Delta.fromJson(json);
}

/// @nodoc
mixin _$Delta {
  @JsonKey(name: 'Role')
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'Content')
  String? get content => throw _privateConstructorUsedError;

  /// Serializes this Delta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Delta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeltaCopyWith<Delta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeltaCopyWith<$Res> {
  factory $DeltaCopyWith(Delta value, $Res Function(Delta) then) =
      _$DeltaCopyWithImpl<$Res, Delta>;
  @useResult
  $Res call({
    @JsonKey(name: 'Role') String? role,
    @JsonKey(name: 'Content') String? content,
  });
}

/// @nodoc
class _$DeltaCopyWithImpl<$Res, $Val extends Delta>
    implements $DeltaCopyWith<$Res> {
  _$DeltaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Delta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? role = freezed, Object? content = freezed}) {
    return _then(
      _value.copyWith(
            role:
                freezed == role
                    ? _value.role
                    : role // ignore: cast_nullable_to_non_nullable
                        as String?,
            content:
                freezed == content
                    ? _value.content
                    : content // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeltaImplCopyWith<$Res> implements $DeltaCopyWith<$Res> {
  factory _$$DeltaImplCopyWith(
    _$DeltaImpl value,
    $Res Function(_$DeltaImpl) then,
  ) = __$$DeltaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'Role') String? role,
    @JsonKey(name: 'Content') String? content,
  });
}

/// @nodoc
class __$$DeltaImplCopyWithImpl<$Res>
    extends _$DeltaCopyWithImpl<$Res, _$DeltaImpl>
    implements _$$DeltaImplCopyWith<$Res> {
  __$$DeltaImplCopyWithImpl(
    _$DeltaImpl _value,
    $Res Function(_$DeltaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Delta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? role = freezed, Object? content = freezed}) {
    return _then(
      _$DeltaImpl(
        role:
            freezed == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                    as String?,
        content:
            freezed == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DeltaImpl implements _Delta {
  const _$DeltaImpl({
    @JsonKey(name: 'Role') this.role,
    @JsonKey(name: 'Content') this.content,
  });

  factory _$DeltaImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeltaImplFromJson(json);

  @override
  @JsonKey(name: 'Role')
  final String? role;
  @override
  @JsonKey(name: 'Content')
  final String? content;

  @override
  String toString() {
    return 'Delta(role: $role, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeltaImpl &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, role, content);

  /// Create a copy of Delta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeltaImplCopyWith<_$DeltaImpl> get copyWith =>
      __$$DeltaImplCopyWithImpl<_$DeltaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeltaImplToJson(this);
  }
}

abstract class _Delta implements Delta {
  const factory _Delta({
    @JsonKey(name: 'Role') final String? role,
    @JsonKey(name: 'Content') final String? content,
  }) = _$DeltaImpl;

  factory _Delta.fromJson(Map<String, dynamic> json) = _$DeltaImpl.fromJson;

  @override
  @JsonKey(name: 'Role')
  String? get role;
  @override
  @JsonKey(name: 'Content')
  String? get content;

  /// Create a copy of Delta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeltaImplCopyWith<_$DeltaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
