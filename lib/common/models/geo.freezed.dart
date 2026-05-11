// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GeoResponse _$GeoResponseFromJson(Map<String, dynamic> json) {
  return _GeoResponse.fromJson(json);
}

/// @nodoc
mixin _$GeoResponse {
  String? get code => throw _privateConstructorUsedError;
  List<Location>? get location => throw _privateConstructorUsedError;
  Refer? get refer => throw _privateConstructorUsedError;

  /// Serializes this GeoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GeoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeoResponseCopyWith<GeoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoResponseCopyWith<$Res> {
  factory $GeoResponseCopyWith(
    GeoResponse value,
    $Res Function(GeoResponse) then,
  ) = _$GeoResponseCopyWithImpl<$Res, GeoResponse>;
  @useResult
  $Res call({String? code, List<Location>? location, Refer? refer});

  $ReferCopyWith<$Res>? get refer;
}

/// @nodoc
class _$GeoResponseCopyWithImpl<$Res, $Val extends GeoResponse>
    implements $GeoResponseCopyWith<$Res> {
  _$GeoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? location = freezed,
    Object? refer = freezed,
  }) {
    return _then(
      _value.copyWith(
            code:
                freezed == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String?,
            location:
                freezed == location
                    ? _value.location
                    : location // ignore: cast_nullable_to_non_nullable
                        as List<Location>?,
            refer:
                freezed == refer
                    ? _value.refer
                    : refer // ignore: cast_nullable_to_non_nullable
                        as Refer?,
          )
          as $Val,
    );
  }

  /// Create a copy of GeoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferCopyWith<$Res>? get refer {
    if (_value.refer == null) {
      return null;
    }

    return $ReferCopyWith<$Res>(_value.refer!, (value) {
      return _then(_value.copyWith(refer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GeoResponseImplCopyWith<$Res>
    implements $GeoResponseCopyWith<$Res> {
  factory _$$GeoResponseImplCopyWith(
    _$GeoResponseImpl value,
    $Res Function(_$GeoResponseImpl) then,
  ) = __$$GeoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? code, List<Location>? location, Refer? refer});

  @override
  $ReferCopyWith<$Res>? get refer;
}

/// @nodoc
class __$$GeoResponseImplCopyWithImpl<$Res>
    extends _$GeoResponseCopyWithImpl<$Res, _$GeoResponseImpl>
    implements _$$GeoResponseImplCopyWith<$Res> {
  __$$GeoResponseImplCopyWithImpl(
    _$GeoResponseImpl _value,
    $Res Function(_$GeoResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GeoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? location = freezed,
    Object? refer = freezed,
  }) {
    return _then(
      _$GeoResponseImpl(
        code:
            freezed == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String?,
        location:
            freezed == location
                ? _value._location
                : location // ignore: cast_nullable_to_non_nullable
                    as List<Location>?,
        refer:
            freezed == refer
                ? _value.refer
                : refer // ignore: cast_nullable_to_non_nullable
                    as Refer?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GeoResponseImpl implements _GeoResponse {
  const _$GeoResponseImpl({
    this.code,
    final List<Location>? location,
    this.refer,
  }) : _location = location;

  factory _$GeoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeoResponseImplFromJson(json);

  @override
  final String? code;
  final List<Location>? _location;
  @override
  List<Location>? get location {
    final value = _location;
    if (value == null) return null;
    if (_location is EqualUnmodifiableListView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Refer? refer;

  @override
  String toString() {
    return 'GeoResponse(code: $code, location: $location, refer: $refer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._location, _location) &&
            (identical(other.refer, refer) || other.refer == refer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    code,
    const DeepCollectionEquality().hash(_location),
    refer,
  );

  /// Create a copy of GeoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoResponseImplCopyWith<_$GeoResponseImpl> get copyWith =>
      __$$GeoResponseImplCopyWithImpl<_$GeoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeoResponseImplToJson(this);
  }
}

abstract class _GeoResponse implements GeoResponse {
  const factory _GeoResponse({
    final String? code,
    final List<Location>? location,
    final Refer? refer,
  }) = _$GeoResponseImpl;

  factory _GeoResponse.fromJson(Map<String, dynamic> json) =
      _$GeoResponseImpl.fromJson;

  @override
  String? get code;
  @override
  List<Location>? get location;
  @override
  Refer? get refer;

  /// Create a copy of GeoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeoResponseImplCopyWith<_$GeoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Refer _$ReferFromJson(Map<String, dynamic> json) {
  return _Refer.fromJson(json);
}

/// @nodoc
mixin _$Refer {
  List<String>? get sources => throw _privateConstructorUsedError;
  List<String>? get license => throw _privateConstructorUsedError;

  /// Serializes this Refer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Refer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferCopyWith<Refer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferCopyWith<$Res> {
  factory $ReferCopyWith(Refer value, $Res Function(Refer) then) =
      _$ReferCopyWithImpl<$Res, Refer>;
  @useResult
  $Res call({List<String>? sources, List<String>? license});
}

/// @nodoc
class _$ReferCopyWithImpl<$Res, $Val extends Refer>
    implements $ReferCopyWith<$Res> {
  _$ReferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Refer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sources = freezed, Object? license = freezed}) {
    return _then(
      _value.copyWith(
            sources:
                freezed == sources
                    ? _value.sources
                    : sources // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
            license:
                freezed == license
                    ? _value.license
                    : license // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReferImplCopyWith<$Res> implements $ReferCopyWith<$Res> {
  factory _$$ReferImplCopyWith(
    _$ReferImpl value,
    $Res Function(_$ReferImpl) then,
  ) = __$$ReferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? sources, List<String>? license});
}

/// @nodoc
class __$$ReferImplCopyWithImpl<$Res>
    extends _$ReferCopyWithImpl<$Res, _$ReferImpl>
    implements _$$ReferImplCopyWith<$Res> {
  __$$ReferImplCopyWithImpl(
    _$ReferImpl _value,
    $Res Function(_$ReferImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Refer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? sources = freezed, Object? license = freezed}) {
    return _then(
      _$ReferImpl(
        sources:
            freezed == sources
                ? _value._sources
                : sources // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
        license:
            freezed == license
                ? _value._license
                : license // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferImpl implements _Refer {
  const _$ReferImpl({final List<String>? sources, final List<String>? license})
    : _sources = sources,
      _license = license;

  factory _$ReferImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferImplFromJson(json);

  final List<String>? _sources;
  @override
  List<String>? get sources {
    final value = _sources;
    if (value == null) return null;
    if (_sources is EqualUnmodifiableListView) return _sources;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _license;
  @override
  List<String>? get license {
    final value = _license;
    if (value == null) return null;
    if (_license is EqualUnmodifiableListView) return _license;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Refer(sources: $sources, license: $license)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferImpl &&
            const DeepCollectionEquality().equals(other._sources, _sources) &&
            const DeepCollectionEquality().equals(other._license, _license));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_sources),
    const DeepCollectionEquality().hash(_license),
  );

  /// Create a copy of Refer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferImplCopyWith<_$ReferImpl> get copyWith =>
      __$$ReferImplCopyWithImpl<_$ReferImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferImplToJson(this);
  }
}

abstract class _Refer implements Refer {
  const factory _Refer({
    final List<String>? sources,
    final List<String>? license,
  }) = _$ReferImpl;

  factory _Refer.fromJson(Map<String, dynamic> json) = _$ReferImpl.fromJson;

  @override
  List<String>? get sources;
  @override
  List<String>? get license;

  /// Create a copy of Refer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferImplCopyWith<_$ReferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String? get name => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get lat => throw _privateConstructorUsedError;
  String? get lon => throw _privateConstructorUsedError;
  String? get adm2 => throw _privateConstructorUsedError;
  String? get adm1 => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get tz => throw _privateConstructorUsedError;
  String? get utcOffset => throw _privateConstructorUsedError;
  String? get isDst => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get rank => throw _privateConstructorUsedError;
  String? get fxLink => throw _privateConstructorUsedError;

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call({
    String? name,
    String? id,
    String? lat,
    String? lon,
    String? adm2,
    String? adm1,
    String? country,
    String? tz,
    String? utcOffset,
    String? isDst,
    String? type,
    String? rank,
    String? fxLink,
  });
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? adm2 = freezed,
    Object? adm1 = freezed,
    Object? country = freezed,
    Object? tz = freezed,
    Object? utcOffset = freezed,
    Object? isDst = freezed,
    Object? type = freezed,
    Object? rank = freezed,
    Object? fxLink = freezed,
  }) {
    return _then(
      _value.copyWith(
            name:
                freezed == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String?,
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String?,
            lat:
                freezed == lat
                    ? _value.lat
                    : lat // ignore: cast_nullable_to_non_nullable
                        as String?,
            lon:
                freezed == lon
                    ? _value.lon
                    : lon // ignore: cast_nullable_to_non_nullable
                        as String?,
            adm2:
                freezed == adm2
                    ? _value.adm2
                    : adm2 // ignore: cast_nullable_to_non_nullable
                        as String?,
            adm1:
                freezed == adm1
                    ? _value.adm1
                    : adm1 // ignore: cast_nullable_to_non_nullable
                        as String?,
            country:
                freezed == country
                    ? _value.country
                    : country // ignore: cast_nullable_to_non_nullable
                        as String?,
            tz:
                freezed == tz
                    ? _value.tz
                    : tz // ignore: cast_nullable_to_non_nullable
                        as String?,
            utcOffset:
                freezed == utcOffset
                    ? _value.utcOffset
                    : utcOffset // ignore: cast_nullable_to_non_nullable
                        as String?,
            isDst:
                freezed == isDst
                    ? _value.isDst
                    : isDst // ignore: cast_nullable_to_non_nullable
                        as String?,
            type:
                freezed == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String?,
            rank:
                freezed == rank
                    ? _value.rank
                    : rank // ignore: cast_nullable_to_non_nullable
                        as String?,
            fxLink:
                freezed == fxLink
                    ? _value.fxLink
                    : fxLink // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
    _$LocationImpl value,
    $Res Function(_$LocationImpl) then,
  ) = __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? name,
    String? id,
    String? lat,
    String? lon,
    String? adm2,
    String? adm1,
    String? country,
    String? tz,
    String? utcOffset,
    String? isDst,
    String? type,
    String? rank,
    String? fxLink,
  });
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
    _$LocationImpl _value,
    $Res Function(_$LocationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? adm2 = freezed,
    Object? adm1 = freezed,
    Object? country = freezed,
    Object? tz = freezed,
    Object? utcOffset = freezed,
    Object? isDst = freezed,
    Object? type = freezed,
    Object? rank = freezed,
    Object? fxLink = freezed,
  }) {
    return _then(
      _$LocationImpl(
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String?,
        lat:
            freezed == lat
                ? _value.lat
                : lat // ignore: cast_nullable_to_non_nullable
                    as String?,
        lon:
            freezed == lon
                ? _value.lon
                : lon // ignore: cast_nullable_to_non_nullable
                    as String?,
        adm2:
            freezed == adm2
                ? _value.adm2
                : adm2 // ignore: cast_nullable_to_non_nullable
                    as String?,
        adm1:
            freezed == adm1
                ? _value.adm1
                : adm1 // ignore: cast_nullable_to_non_nullable
                    as String?,
        country:
            freezed == country
                ? _value.country
                : country // ignore: cast_nullable_to_non_nullable
                    as String?,
        tz:
            freezed == tz
                ? _value.tz
                : tz // ignore: cast_nullable_to_non_nullable
                    as String?,
        utcOffset:
            freezed == utcOffset
                ? _value.utcOffset
                : utcOffset // ignore: cast_nullable_to_non_nullable
                    as String?,
        isDst:
            freezed == isDst
                ? _value.isDst
                : isDst // ignore: cast_nullable_to_non_nullable
                    as String?,
        type:
            freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String?,
        rank:
            freezed == rank
                ? _value.rank
                : rank // ignore: cast_nullable_to_non_nullable
                    as String?,
        fxLink:
            freezed == fxLink
                ? _value.fxLink
                : fxLink // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl({
    this.name,
    this.id,
    this.lat,
    this.lon,
    this.adm2,
    this.adm1,
    this.country,
    this.tz,
    this.utcOffset,
    this.isDst,
    this.type,
    this.rank,
    this.fxLink,
  });

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final String? name;
  @override
  final String? id;
  @override
  final String? lat;
  @override
  final String? lon;
  @override
  final String? adm2;
  @override
  final String? adm1;
  @override
  final String? country;
  @override
  final String? tz;
  @override
  final String? utcOffset;
  @override
  final String? isDst;
  @override
  final String? type;
  @override
  final String? rank;
  @override
  final String? fxLink;

  @override
  String toString() {
    return 'Location(name: $name, id: $id, lat: $lat, lon: $lon, adm2: $adm2, adm1: $adm1, country: $country, tz: $tz, utcOffset: $utcOffset, isDst: $isDst, type: $type, rank: $rank, fxLink: $fxLink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.adm2, adm2) || other.adm2 == adm2) &&
            (identical(other.adm1, adm1) || other.adm1 == adm1) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.tz, tz) || other.tz == tz) &&
            (identical(other.utcOffset, utcOffset) ||
                other.utcOffset == utcOffset) &&
            (identical(other.isDst, isDst) || other.isDst == isDst) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.fxLink, fxLink) || other.fxLink == fxLink));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    id,
    lat,
    lon,
    adm2,
    adm1,
    country,
    tz,
    utcOffset,
    isDst,
    type,
    rank,
    fxLink,
  );

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(this);
  }
}

abstract class _Location implements Location {
  const factory _Location({
    final String? name,
    final String? id,
    final String? lat,
    final String? lon,
    final String? adm2,
    final String? adm1,
    final String? country,
    final String? tz,
    final String? utcOffset,
    final String? isDst,
    final String? type,
    final String? rank,
    final String? fxLink,
  }) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  String? get name;
  @override
  String? get id;
  @override
  String? get lat;
  @override
  String? get lon;
  @override
  String? get adm2;
  @override
  String? get adm1;
  @override
  String? get country;
  @override
  String? get tz;
  @override
  String? get utcOffset;
  @override
  String? get isDst;
  @override
  String? get type;
  @override
  String? get rank;
  @override
  String? get fxLink;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
