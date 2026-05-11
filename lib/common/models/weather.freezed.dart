// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) {
  return _WeatherResponse.fromJson(json);
}

/// @nodoc
mixin _$WeatherResponse {
  String? get code => throw _privateConstructorUsedError;
  String? get updateTime => throw _privateConstructorUsedError;
  String? get fxLink => throw _privateConstructorUsedError;
  Now? get now => throw _privateConstructorUsedError;
  Refer? get refer => throw _privateConstructorUsedError;

  /// Serializes this WeatherResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherResponseCopyWith<WeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherResponseCopyWith<$Res> {
  factory $WeatherResponseCopyWith(
    WeatherResponse value,
    $Res Function(WeatherResponse) then,
  ) = _$WeatherResponseCopyWithImpl<$Res, WeatherResponse>;
  @useResult
  $Res call({
    String? code,
    String? updateTime,
    String? fxLink,
    Now? now,
    Refer? refer,
  });

  $NowCopyWith<$Res>? get now;
  $ReferCopyWith<$Res>? get refer;
}

/// @nodoc
class _$WeatherResponseCopyWithImpl<$Res, $Val extends WeatherResponse>
    implements $WeatherResponseCopyWith<$Res> {
  _$WeatherResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? updateTime = freezed,
    Object? fxLink = freezed,
    Object? now = freezed,
    Object? refer = freezed,
  }) {
    return _then(
      _value.copyWith(
            code:
                freezed == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as String?,
            updateTime:
                freezed == updateTime
                    ? _value.updateTime
                    : updateTime // ignore: cast_nullable_to_non_nullable
                        as String?,
            fxLink:
                freezed == fxLink
                    ? _value.fxLink
                    : fxLink // ignore: cast_nullable_to_non_nullable
                        as String?,
            now:
                freezed == now
                    ? _value.now
                    : now // ignore: cast_nullable_to_non_nullable
                        as Now?,
            refer:
                freezed == refer
                    ? _value.refer
                    : refer // ignore: cast_nullable_to_non_nullable
                        as Refer?,
          )
          as $Val,
    );
  }

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NowCopyWith<$Res>? get now {
    if (_value.now == null) {
      return null;
    }

    return $NowCopyWith<$Res>(_value.now!, (value) {
      return _then(_value.copyWith(now: value) as $Val);
    });
  }

  /// Create a copy of WeatherResponse
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
abstract class _$$WeatherResponseImplCopyWith<$Res>
    implements $WeatherResponseCopyWith<$Res> {
  factory _$$WeatherResponseImplCopyWith(
    _$WeatherResponseImpl value,
    $Res Function(_$WeatherResponseImpl) then,
  ) = __$$WeatherResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? code,
    String? updateTime,
    String? fxLink,
    Now? now,
    Refer? refer,
  });

  @override
  $NowCopyWith<$Res>? get now;
  @override
  $ReferCopyWith<$Res>? get refer;
}

/// @nodoc
class __$$WeatherResponseImplCopyWithImpl<$Res>
    extends _$WeatherResponseCopyWithImpl<$Res, _$WeatherResponseImpl>
    implements _$$WeatherResponseImplCopyWith<$Res> {
  __$$WeatherResponseImplCopyWithImpl(
    _$WeatherResponseImpl _value,
    $Res Function(_$WeatherResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? updateTime = freezed,
    Object? fxLink = freezed,
    Object? now = freezed,
    Object? refer = freezed,
  }) {
    return _then(
      _$WeatherResponseImpl(
        code:
            freezed == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as String?,
        updateTime:
            freezed == updateTime
                ? _value.updateTime
                : updateTime // ignore: cast_nullable_to_non_nullable
                    as String?,
        fxLink:
            freezed == fxLink
                ? _value.fxLink
                : fxLink // ignore: cast_nullable_to_non_nullable
                    as String?,
        now:
            freezed == now
                ? _value.now
                : now // ignore: cast_nullable_to_non_nullable
                    as Now?,
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
class _$WeatherResponseImpl implements _WeatherResponse {
  const _$WeatherResponseImpl({
    this.code,
    this.updateTime,
    this.fxLink,
    this.now,
    this.refer,
  });

  factory _$WeatherResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherResponseImplFromJson(json);

  @override
  final String? code;
  @override
  final String? updateTime;
  @override
  final String? fxLink;
  @override
  final Now? now;
  @override
  final Refer? refer;

  @override
  String toString() {
    return 'WeatherResponse(code: $code, updateTime: $updateTime, fxLink: $fxLink, now: $now, refer: $refer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.updateTime, updateTime) ||
                other.updateTime == updateTime) &&
            (identical(other.fxLink, fxLink) || other.fxLink == fxLink) &&
            (identical(other.now, now) || other.now == now) &&
            (identical(other.refer, refer) || other.refer == refer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, updateTime, fxLink, now, refer);

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherResponseImplCopyWith<_$WeatherResponseImpl> get copyWith =>
      __$$WeatherResponseImplCopyWithImpl<_$WeatherResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherResponseImplToJson(this);
  }
}

abstract class _WeatherResponse implements WeatherResponse {
  const factory _WeatherResponse({
    final String? code,
    final String? updateTime,
    final String? fxLink,
    final Now? now,
    final Refer? refer,
  }) = _$WeatherResponseImpl;

  factory _WeatherResponse.fromJson(Map<String, dynamic> json) =
      _$WeatherResponseImpl.fromJson;

  @override
  String? get code;
  @override
  String? get updateTime;
  @override
  String? get fxLink;
  @override
  Now? get now;
  @override
  Refer? get refer;

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherResponseImplCopyWith<_$WeatherResponseImpl> get copyWith =>
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

Now _$NowFromJson(Map<String, dynamic> json) {
  return _Now.fromJson(json);
}

/// @nodoc
mixin _$Now {
  String? get obsTime => throw _privateConstructorUsedError;
  String? get temp => throw _privateConstructorUsedError;
  String? get feelsLike => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get wind360 => throw _privateConstructorUsedError;
  String? get windDir => throw _privateConstructorUsedError;
  String? get windScale => throw _privateConstructorUsedError;
  String? get windSpeed => throw _privateConstructorUsedError;
  String? get humidity => throw _privateConstructorUsedError;
  String? get precip => throw _privateConstructorUsedError;
  String? get pressure => throw _privateConstructorUsedError;
  String? get vis => throw _privateConstructorUsedError;
  String? get cloud => throw _privateConstructorUsedError;
  String? get dew => throw _privateConstructorUsedError;

  /// Serializes this Now to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Now
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NowCopyWith<Now> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowCopyWith<$Res> {
  factory $NowCopyWith(Now value, $Res Function(Now) then) =
      _$NowCopyWithImpl<$Res, Now>;
  @useResult
  $Res call({
    String? obsTime,
    String? temp,
    String? feelsLike,
    String? icon,
    String? text,
    String? wind360,
    String? windDir,
    String? windScale,
    String? windSpeed,
    String? humidity,
    String? precip,
    String? pressure,
    String? vis,
    String? cloud,
    String? dew,
  });
}

/// @nodoc
class _$NowCopyWithImpl<$Res, $Val extends Now> implements $NowCopyWith<$Res> {
  _$NowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Now
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? obsTime = freezed,
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? icon = freezed,
    Object? text = freezed,
    Object? wind360 = freezed,
    Object? windDir = freezed,
    Object? windScale = freezed,
    Object? windSpeed = freezed,
    Object? humidity = freezed,
    Object? precip = freezed,
    Object? pressure = freezed,
    Object? vis = freezed,
    Object? cloud = freezed,
    Object? dew = freezed,
  }) {
    return _then(
      _value.copyWith(
            obsTime:
                freezed == obsTime
                    ? _value.obsTime
                    : obsTime // ignore: cast_nullable_to_non_nullable
                        as String?,
            temp:
                freezed == temp
                    ? _value.temp
                    : temp // ignore: cast_nullable_to_non_nullable
                        as String?,
            feelsLike:
                freezed == feelsLike
                    ? _value.feelsLike
                    : feelsLike // ignore: cast_nullable_to_non_nullable
                        as String?,
            icon:
                freezed == icon
                    ? _value.icon
                    : icon // ignore: cast_nullable_to_non_nullable
                        as String?,
            text:
                freezed == text
                    ? _value.text
                    : text // ignore: cast_nullable_to_non_nullable
                        as String?,
            wind360:
                freezed == wind360
                    ? _value.wind360
                    : wind360 // ignore: cast_nullable_to_non_nullable
                        as String?,
            windDir:
                freezed == windDir
                    ? _value.windDir
                    : windDir // ignore: cast_nullable_to_non_nullable
                        as String?,
            windScale:
                freezed == windScale
                    ? _value.windScale
                    : windScale // ignore: cast_nullable_to_non_nullable
                        as String?,
            windSpeed:
                freezed == windSpeed
                    ? _value.windSpeed
                    : windSpeed // ignore: cast_nullable_to_non_nullable
                        as String?,
            humidity:
                freezed == humidity
                    ? _value.humidity
                    : humidity // ignore: cast_nullable_to_non_nullable
                        as String?,
            precip:
                freezed == precip
                    ? _value.precip
                    : precip // ignore: cast_nullable_to_non_nullable
                        as String?,
            pressure:
                freezed == pressure
                    ? _value.pressure
                    : pressure // ignore: cast_nullable_to_non_nullable
                        as String?,
            vis:
                freezed == vis
                    ? _value.vis
                    : vis // ignore: cast_nullable_to_non_nullable
                        as String?,
            cloud:
                freezed == cloud
                    ? _value.cloud
                    : cloud // ignore: cast_nullable_to_non_nullable
                        as String?,
            dew:
                freezed == dew
                    ? _value.dew
                    : dew // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NowImplCopyWith<$Res> implements $NowCopyWith<$Res> {
  factory _$$NowImplCopyWith(_$NowImpl value, $Res Function(_$NowImpl) then) =
      __$$NowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? obsTime,
    String? temp,
    String? feelsLike,
    String? icon,
    String? text,
    String? wind360,
    String? windDir,
    String? windScale,
    String? windSpeed,
    String? humidity,
    String? precip,
    String? pressure,
    String? vis,
    String? cloud,
    String? dew,
  });
}

/// @nodoc
class __$$NowImplCopyWithImpl<$Res> extends _$NowCopyWithImpl<$Res, _$NowImpl>
    implements _$$NowImplCopyWith<$Res> {
  __$$NowImplCopyWithImpl(_$NowImpl _value, $Res Function(_$NowImpl) _then)
    : super(_value, _then);

  /// Create a copy of Now
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? obsTime = freezed,
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? icon = freezed,
    Object? text = freezed,
    Object? wind360 = freezed,
    Object? windDir = freezed,
    Object? windScale = freezed,
    Object? windSpeed = freezed,
    Object? humidity = freezed,
    Object? precip = freezed,
    Object? pressure = freezed,
    Object? vis = freezed,
    Object? cloud = freezed,
    Object? dew = freezed,
  }) {
    return _then(
      _$NowImpl(
        obsTime:
            freezed == obsTime
                ? _value.obsTime
                : obsTime // ignore: cast_nullable_to_non_nullable
                    as String?,
        temp:
            freezed == temp
                ? _value.temp
                : temp // ignore: cast_nullable_to_non_nullable
                    as String?,
        feelsLike:
            freezed == feelsLike
                ? _value.feelsLike
                : feelsLike // ignore: cast_nullable_to_non_nullable
                    as String?,
        icon:
            freezed == icon
                ? _value.icon
                : icon // ignore: cast_nullable_to_non_nullable
                    as String?,
        text:
            freezed == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                    as String?,
        wind360:
            freezed == wind360
                ? _value.wind360
                : wind360 // ignore: cast_nullable_to_non_nullable
                    as String?,
        windDir:
            freezed == windDir
                ? _value.windDir
                : windDir // ignore: cast_nullable_to_non_nullable
                    as String?,
        windScale:
            freezed == windScale
                ? _value.windScale
                : windScale // ignore: cast_nullable_to_non_nullable
                    as String?,
        windSpeed:
            freezed == windSpeed
                ? _value.windSpeed
                : windSpeed // ignore: cast_nullable_to_non_nullable
                    as String?,
        humidity:
            freezed == humidity
                ? _value.humidity
                : humidity // ignore: cast_nullable_to_non_nullable
                    as String?,
        precip:
            freezed == precip
                ? _value.precip
                : precip // ignore: cast_nullable_to_non_nullable
                    as String?,
        pressure:
            freezed == pressure
                ? _value.pressure
                : pressure // ignore: cast_nullable_to_non_nullable
                    as String?,
        vis:
            freezed == vis
                ? _value.vis
                : vis // ignore: cast_nullable_to_non_nullable
                    as String?,
        cloud:
            freezed == cloud
                ? _value.cloud
                : cloud // ignore: cast_nullable_to_non_nullable
                    as String?,
        dew:
            freezed == dew
                ? _value.dew
                : dew // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NowImpl implements _Now {
  const _$NowImpl({
    this.obsTime,
    this.temp,
    this.feelsLike,
    this.icon,
    this.text,
    this.wind360,
    this.windDir,
    this.windScale,
    this.windSpeed,
    this.humidity,
    this.precip,
    this.pressure,
    this.vis,
    this.cloud,
    this.dew,
  });

  factory _$NowImpl.fromJson(Map<String, dynamic> json) =>
      _$$NowImplFromJson(json);

  @override
  final String? obsTime;
  @override
  final String? temp;
  @override
  final String? feelsLike;
  @override
  final String? icon;
  @override
  final String? text;
  @override
  final String? wind360;
  @override
  final String? windDir;
  @override
  final String? windScale;
  @override
  final String? windSpeed;
  @override
  final String? humidity;
  @override
  final String? precip;
  @override
  final String? pressure;
  @override
  final String? vis;
  @override
  final String? cloud;
  @override
  final String? dew;

  @override
  String toString() {
    return 'Now(obsTime: $obsTime, temp: $temp, feelsLike: $feelsLike, icon: $icon, text: $text, wind360: $wind360, windDir: $windDir, windScale: $windScale, windSpeed: $windSpeed, humidity: $humidity, precip: $precip, pressure: $pressure, vis: $vis, cloud: $cloud, dew: $dew)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NowImpl &&
            (identical(other.obsTime, obsTime) || other.obsTime == obsTime) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.wind360, wind360) || other.wind360 == wind360) &&
            (identical(other.windDir, windDir) || other.windDir == windDir) &&
            (identical(other.windScale, windScale) ||
                other.windScale == windScale) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.precip, precip) || other.precip == precip) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.vis, vis) || other.vis == vis) &&
            (identical(other.cloud, cloud) || other.cloud == cloud) &&
            (identical(other.dew, dew) || other.dew == dew));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    obsTime,
    temp,
    feelsLike,
    icon,
    text,
    wind360,
    windDir,
    windScale,
    windSpeed,
    humidity,
    precip,
    pressure,
    vis,
    cloud,
    dew,
  );

  /// Create a copy of Now
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NowImplCopyWith<_$NowImpl> get copyWith =>
      __$$NowImplCopyWithImpl<_$NowImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NowImplToJson(this);
  }
}

abstract class _Now implements Now {
  const factory _Now({
    final String? obsTime,
    final String? temp,
    final String? feelsLike,
    final String? icon,
    final String? text,
    final String? wind360,
    final String? windDir,
    final String? windScale,
    final String? windSpeed,
    final String? humidity,
    final String? precip,
    final String? pressure,
    final String? vis,
    final String? cloud,
    final String? dew,
  }) = _$NowImpl;

  factory _Now.fromJson(Map<String, dynamic> json) = _$NowImpl.fromJson;

  @override
  String? get obsTime;
  @override
  String? get temp;
  @override
  String? get feelsLike;
  @override
  String? get icon;
  @override
  String? get text;
  @override
  String? get wind360;
  @override
  String? get windDir;
  @override
  String? get windScale;
  @override
  String? get windSpeed;
  @override
  String? get humidity;
  @override
  String? get precip;
  @override
  String? get pressure;
  @override
  String? get vis;
  @override
  String? get cloud;
  @override
  String? get dew;

  /// Create a copy of Now
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NowImplCopyWith<_$NowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
