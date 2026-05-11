// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hitokoto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HitokotoResponse _$HitokotoResponseFromJson(Map<String, dynamic> json) {
  return _HitokotoResponse.fromJson(json);
}

/// @nodoc
mixin _$HitokotoResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get uuid => throw _privateConstructorUsedError;
  String? get hitokoto => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'from_who')
  String? get fromWho => throw _privateConstructorUsedError;
  String? get creator => throw _privateConstructorUsedError;
  @JsonKey(name: 'creator_uid')
  int? get creatorUid => throw _privateConstructorUsedError;
  int? get reviewer => throw _privateConstructorUsedError;
  @JsonKey(name: 'commit_from')
  String? get commitFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  int? get length => throw _privateConstructorUsedError;

  /// Serializes this HitokotoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HitokotoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HitokotoResponseCopyWith<HitokotoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HitokotoResponseCopyWith<$Res> {
  factory $HitokotoResponseCopyWith(
    HitokotoResponse value,
    $Res Function(HitokotoResponse) then,
  ) = _$HitokotoResponseCopyWithImpl<$Res, HitokotoResponse>;
  @useResult
  $Res call({
    int? id,
    String? uuid,
    String? hitokoto,
    String? type,
    String? from,
    @JsonKey(name: 'from_who') String? fromWho,
    String? creator,
    @JsonKey(name: 'creator_uid') int? creatorUid,
    int? reviewer,
    @JsonKey(name: 'commit_from') String? commitFrom,
    @JsonKey(name: 'created_at') String? createdAt,
    int? length,
  });
}

/// @nodoc
class _$HitokotoResponseCopyWithImpl<$Res, $Val extends HitokotoResponse>
    implements $HitokotoResponseCopyWith<$Res> {
  _$HitokotoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HitokotoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? hitokoto = freezed,
    Object? type = freezed,
    Object? from = freezed,
    Object? fromWho = freezed,
    Object? creator = freezed,
    Object? creatorUid = freezed,
    Object? reviewer = freezed,
    Object? commitFrom = freezed,
    Object? createdAt = freezed,
    Object? length = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int?,
            uuid:
                freezed == uuid
                    ? _value.uuid
                    : uuid // ignore: cast_nullable_to_non_nullable
                        as String?,
            hitokoto:
                freezed == hitokoto
                    ? _value.hitokoto
                    : hitokoto // ignore: cast_nullable_to_non_nullable
                        as String?,
            type:
                freezed == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String?,
            from:
                freezed == from
                    ? _value.from
                    : from // ignore: cast_nullable_to_non_nullable
                        as String?,
            fromWho:
                freezed == fromWho
                    ? _value.fromWho
                    : fromWho // ignore: cast_nullable_to_non_nullable
                        as String?,
            creator:
                freezed == creator
                    ? _value.creator
                    : creator // ignore: cast_nullable_to_non_nullable
                        as String?,
            creatorUid:
                freezed == creatorUid
                    ? _value.creatorUid
                    : creatorUid // ignore: cast_nullable_to_non_nullable
                        as int?,
            reviewer:
                freezed == reviewer
                    ? _value.reviewer
                    : reviewer // ignore: cast_nullable_to_non_nullable
                        as int?,
            commitFrom:
                freezed == commitFrom
                    ? _value.commitFrom
                    : commitFrom // ignore: cast_nullable_to_non_nullable
                        as String?,
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as String?,
            length:
                freezed == length
                    ? _value.length
                    : length // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HitokotoResponseImplCopyWith<$Res>
    implements $HitokotoResponseCopyWith<$Res> {
  factory _$$HitokotoResponseImplCopyWith(
    _$HitokotoResponseImpl value,
    $Res Function(_$HitokotoResponseImpl) then,
  ) = __$$HitokotoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    String? uuid,
    String? hitokoto,
    String? type,
    String? from,
    @JsonKey(name: 'from_who') String? fromWho,
    String? creator,
    @JsonKey(name: 'creator_uid') int? creatorUid,
    int? reviewer,
    @JsonKey(name: 'commit_from') String? commitFrom,
    @JsonKey(name: 'created_at') String? createdAt,
    int? length,
  });
}

/// @nodoc
class __$$HitokotoResponseImplCopyWithImpl<$Res>
    extends _$HitokotoResponseCopyWithImpl<$Res, _$HitokotoResponseImpl>
    implements _$$HitokotoResponseImplCopyWith<$Res> {
  __$$HitokotoResponseImplCopyWithImpl(
    _$HitokotoResponseImpl _value,
    $Res Function(_$HitokotoResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HitokotoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? uuid = freezed,
    Object? hitokoto = freezed,
    Object? type = freezed,
    Object? from = freezed,
    Object? fromWho = freezed,
    Object? creator = freezed,
    Object? creatorUid = freezed,
    Object? reviewer = freezed,
    Object? commitFrom = freezed,
    Object? createdAt = freezed,
    Object? length = freezed,
  }) {
    return _then(
      _$HitokotoResponseImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        uuid:
            freezed == uuid
                ? _value.uuid
                : uuid // ignore: cast_nullable_to_non_nullable
                    as String?,
        hitokoto:
            freezed == hitokoto
                ? _value.hitokoto
                : hitokoto // ignore: cast_nullable_to_non_nullable
                    as String?,
        type:
            freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String?,
        from:
            freezed == from
                ? _value.from
                : from // ignore: cast_nullable_to_non_nullable
                    as String?,
        fromWho:
            freezed == fromWho
                ? _value.fromWho
                : fromWho // ignore: cast_nullable_to_non_nullable
                    as String?,
        creator:
            freezed == creator
                ? _value.creator
                : creator // ignore: cast_nullable_to_non_nullable
                    as String?,
        creatorUid:
            freezed == creatorUid
                ? _value.creatorUid
                : creatorUid // ignore: cast_nullable_to_non_nullable
                    as int?,
        reviewer:
            freezed == reviewer
                ? _value.reviewer
                : reviewer // ignore: cast_nullable_to_non_nullable
                    as int?,
        commitFrom:
            freezed == commitFrom
                ? _value.commitFrom
                : commitFrom // ignore: cast_nullable_to_non_nullable
                    as String?,
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as String?,
        length:
            freezed == length
                ? _value.length
                : length // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HitokotoResponseImpl implements _HitokotoResponse {
  const _$HitokotoResponseImpl({
    this.id,
    this.uuid,
    this.hitokoto,
    this.type,
    this.from,
    @JsonKey(name: 'from_who') this.fromWho,
    this.creator,
    @JsonKey(name: 'creator_uid') this.creatorUid,
    this.reviewer,
    @JsonKey(name: 'commit_from') this.commitFrom,
    @JsonKey(name: 'created_at') this.createdAt,
    this.length,
  });

  factory _$HitokotoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HitokotoResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? uuid;
  @override
  final String? hitokoto;
  @override
  final String? type;
  @override
  final String? from;
  @override
  @JsonKey(name: 'from_who')
  final String? fromWho;
  @override
  final String? creator;
  @override
  @JsonKey(name: 'creator_uid')
  final int? creatorUid;
  @override
  final int? reviewer;
  @override
  @JsonKey(name: 'commit_from')
  final String? commitFrom;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  final int? length;

  @override
  String toString() {
    return 'HitokotoResponse(id: $id, uuid: $uuid, hitokoto: $hitokoto, type: $type, from: $from, fromWho: $fromWho, creator: $creator, creatorUid: $creatorUid, reviewer: $reviewer, commitFrom: $commitFrom, createdAt: $createdAt, length: $length)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HitokotoResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.hitokoto, hitokoto) ||
                other.hitokoto == hitokoto) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.fromWho, fromWho) || other.fromWho == fromWho) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.creatorUid, creatorUid) ||
                other.creatorUid == creatorUid) &&
            (identical(other.reviewer, reviewer) ||
                other.reviewer == reviewer) &&
            (identical(other.commitFrom, commitFrom) ||
                other.commitFrom == commitFrom) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    uuid,
    hitokoto,
    type,
    from,
    fromWho,
    creator,
    creatorUid,
    reviewer,
    commitFrom,
    createdAt,
    length,
  );

  /// Create a copy of HitokotoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HitokotoResponseImplCopyWith<_$HitokotoResponseImpl> get copyWith =>
      __$$HitokotoResponseImplCopyWithImpl<_$HitokotoResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HitokotoResponseImplToJson(this);
  }
}

abstract class _HitokotoResponse implements HitokotoResponse {
  const factory _HitokotoResponse({
    final int? id,
    final String? uuid,
    final String? hitokoto,
    final String? type,
    final String? from,
    @JsonKey(name: 'from_who') final String? fromWho,
    final String? creator,
    @JsonKey(name: 'creator_uid') final int? creatorUid,
    final int? reviewer,
    @JsonKey(name: 'commit_from') final String? commitFrom,
    @JsonKey(name: 'created_at') final String? createdAt,
    final int? length,
  }) = _$HitokotoResponseImpl;

  factory _HitokotoResponse.fromJson(Map<String, dynamic> json) =
      _$HitokotoResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get uuid;
  @override
  String? get hitokoto;
  @override
  String? get type;
  @override
  String? get from;
  @override
  @JsonKey(name: 'from_who')
  String? get fromWho;
  @override
  String? get creator;
  @override
  @JsonKey(name: 'creator_uid')
  int? get creatorUid;
  @override
  int? get reviewer;
  @override
  @JsonKey(name: 'commit_from')
  String? get commitFrom;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  int? get length;

  /// Create a copy of HitokotoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HitokotoResponseImplCopyWith<_$HitokotoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
