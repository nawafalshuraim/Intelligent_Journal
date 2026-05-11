// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BingImage _$BingImageFromJson(Map<String, dynamic> json) {
  return _BingImage.fromJson(json);
}

/// @nodoc
mixin _$BingImage {
  List<Images>? get images => throw _privateConstructorUsedError;
  Tooltips? get tooltips => throw _privateConstructorUsedError;

  /// Serializes this BingImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BingImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BingImageCopyWith<BingImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BingImageCopyWith<$Res> {
  factory $BingImageCopyWith(BingImage value, $Res Function(BingImage) then) =
      _$BingImageCopyWithImpl<$Res, BingImage>;
  @useResult
  $Res call({List<Images>? images, Tooltips? tooltips});

  $TooltipsCopyWith<$Res>? get tooltips;
}

/// @nodoc
class _$BingImageCopyWithImpl<$Res, $Val extends BingImage>
    implements $BingImageCopyWith<$Res> {
  _$BingImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BingImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? images = freezed, Object? tooltips = freezed}) {
    return _then(
      _value.copyWith(
            images:
                freezed == images
                    ? _value.images
                    : images // ignore: cast_nullable_to_non_nullable
                        as List<Images>?,
            tooltips:
                freezed == tooltips
                    ? _value.tooltips
                    : tooltips // ignore: cast_nullable_to_non_nullable
                        as Tooltips?,
          )
          as $Val,
    );
  }

  /// Create a copy of BingImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TooltipsCopyWith<$Res>? get tooltips {
    if (_value.tooltips == null) {
      return null;
    }

    return $TooltipsCopyWith<$Res>(_value.tooltips!, (value) {
      return _then(_value.copyWith(tooltips: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BingImageImplCopyWith<$Res>
    implements $BingImageCopyWith<$Res> {
  factory _$$BingImageImplCopyWith(
    _$BingImageImpl value,
    $Res Function(_$BingImageImpl) then,
  ) = __$$BingImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Images>? images, Tooltips? tooltips});

  @override
  $TooltipsCopyWith<$Res>? get tooltips;
}

/// @nodoc
class __$$BingImageImplCopyWithImpl<$Res>
    extends _$BingImageCopyWithImpl<$Res, _$BingImageImpl>
    implements _$$BingImageImplCopyWith<$Res> {
  __$$BingImageImplCopyWithImpl(
    _$BingImageImpl _value,
    $Res Function(_$BingImageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BingImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? images = freezed, Object? tooltips = freezed}) {
    return _then(
      _$BingImageImpl(
        images:
            freezed == images
                ? _value._images
                : images // ignore: cast_nullable_to_non_nullable
                    as List<Images>?,
        tooltips:
            freezed == tooltips
                ? _value.tooltips
                : tooltips // ignore: cast_nullable_to_non_nullable
                    as Tooltips?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BingImageImpl implements _BingImage {
  const _$BingImageImpl({final List<Images>? images, this.tooltips})
    : _images = images;

  factory _$BingImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$BingImageImplFromJson(json);

  final List<Images>? _images;
  @override
  List<Images>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Tooltips? tooltips;

  @override
  String toString() {
    return 'BingImage(images: $images, tooltips: $tooltips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BingImageImpl &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.tooltips, tooltips) ||
                other.tooltips == tooltips));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_images),
    tooltips,
  );

  /// Create a copy of BingImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BingImageImplCopyWith<_$BingImageImpl> get copyWith =>
      __$$BingImageImplCopyWithImpl<_$BingImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BingImageImplToJson(this);
  }
}

abstract class _BingImage implements BingImage {
  const factory _BingImage({
    final List<Images>? images,
    final Tooltips? tooltips,
  }) = _$BingImageImpl;

  factory _BingImage.fromJson(Map<String, dynamic> json) =
      _$BingImageImpl.fromJson;

  @override
  List<Images>? get images;
  @override
  Tooltips? get tooltips;

  /// Create a copy of BingImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BingImageImplCopyWith<_$BingImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Tooltips _$TooltipsFromJson(Map<String, dynamic> json) {
  return _Tooltips.fromJson(json);
}

/// @nodoc
mixin _$Tooltips {
  String? get loading => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get walle => throw _privateConstructorUsedError;
  String? get walls => throw _privateConstructorUsedError;

  /// Serializes this Tooltips to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Tooltips
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TooltipsCopyWith<Tooltips> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TooltipsCopyWith<$Res> {
  factory $TooltipsCopyWith(Tooltips value, $Res Function(Tooltips) then) =
      _$TooltipsCopyWithImpl<$Res, Tooltips>;
  @useResult
  $Res call({
    String? loading,
    String? previous,
    String? next,
    String? walle,
    String? walls,
  });
}

/// @nodoc
class _$TooltipsCopyWithImpl<$Res, $Val extends Tooltips>
    implements $TooltipsCopyWith<$Res> {
  _$TooltipsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Tooltips
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = freezed,
    Object? previous = freezed,
    Object? next = freezed,
    Object? walle = freezed,
    Object? walls = freezed,
  }) {
    return _then(
      _value.copyWith(
            loading:
                freezed == loading
                    ? _value.loading
                    : loading // ignore: cast_nullable_to_non_nullable
                        as String?,
            previous:
                freezed == previous
                    ? _value.previous
                    : previous // ignore: cast_nullable_to_non_nullable
                        as String?,
            next:
                freezed == next
                    ? _value.next
                    : next // ignore: cast_nullable_to_non_nullable
                        as String?,
            walle:
                freezed == walle
                    ? _value.walle
                    : walle // ignore: cast_nullable_to_non_nullable
                        as String?,
            walls:
                freezed == walls
                    ? _value.walls
                    : walls // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TooltipsImplCopyWith<$Res>
    implements $TooltipsCopyWith<$Res> {
  factory _$$TooltipsImplCopyWith(
    _$TooltipsImpl value,
    $Res Function(_$TooltipsImpl) then,
  ) = __$$TooltipsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? loading,
    String? previous,
    String? next,
    String? walle,
    String? walls,
  });
}

/// @nodoc
class __$$TooltipsImplCopyWithImpl<$Res>
    extends _$TooltipsCopyWithImpl<$Res, _$TooltipsImpl>
    implements _$$TooltipsImplCopyWith<$Res> {
  __$$TooltipsImplCopyWithImpl(
    _$TooltipsImpl _value,
    $Res Function(_$TooltipsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Tooltips
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = freezed,
    Object? previous = freezed,
    Object? next = freezed,
    Object? walle = freezed,
    Object? walls = freezed,
  }) {
    return _then(
      _$TooltipsImpl(
        loading:
            freezed == loading
                ? _value.loading
                : loading // ignore: cast_nullable_to_non_nullable
                    as String?,
        previous:
            freezed == previous
                ? _value.previous
                : previous // ignore: cast_nullable_to_non_nullable
                    as String?,
        next:
            freezed == next
                ? _value.next
                : next // ignore: cast_nullable_to_non_nullable
                    as String?,
        walle:
            freezed == walle
                ? _value.walle
                : walle // ignore: cast_nullable_to_non_nullable
                    as String?,
        walls:
            freezed == walls
                ? _value.walls
                : walls // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TooltipsImpl implements _Tooltips {
  const _$TooltipsImpl({
    this.loading,
    this.previous,
    this.next,
    this.walle,
    this.walls,
  });

  factory _$TooltipsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TooltipsImplFromJson(json);

  @override
  final String? loading;
  @override
  final String? previous;
  @override
  final String? next;
  @override
  final String? walle;
  @override
  final String? walls;

  @override
  String toString() {
    return 'Tooltips(loading: $loading, previous: $previous, next: $next, walle: $walle, walls: $walls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TooltipsImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.walle, walle) || other.walle == walle) &&
            (identical(other.walls, walls) || other.walls == walls));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, loading, previous, next, walle, walls);

  /// Create a copy of Tooltips
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TooltipsImplCopyWith<_$TooltipsImpl> get copyWith =>
      __$$TooltipsImplCopyWithImpl<_$TooltipsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TooltipsImplToJson(this);
  }
}

abstract class _Tooltips implements Tooltips {
  const factory _Tooltips({
    final String? loading,
    final String? previous,
    final String? next,
    final String? walle,
    final String? walls,
  }) = _$TooltipsImpl;

  factory _Tooltips.fromJson(Map<String, dynamic> json) =
      _$TooltipsImpl.fromJson;

  @override
  String? get loading;
  @override
  String? get previous;
  @override
  String? get next;
  @override
  String? get walle;
  @override
  String? get walls;

  /// Create a copy of Tooltips
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TooltipsImplCopyWith<_$TooltipsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Images _$ImagesFromJson(Map<String, dynamic> json) {
  return _Images.fromJson(json);
}

/// @nodoc
mixin _$Images {
  String? get startdate => throw _privateConstructorUsedError;
  String? get fullstartdate => throw _privateConstructorUsedError;
  String? get enddate => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get urlbase => throw _privateConstructorUsedError;
  String? get copyright => throw _privateConstructorUsedError;
  String? get copyrightlink => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get quiz => throw _privateConstructorUsedError;
  bool? get wp => throw _privateConstructorUsedError;
  String? get hsh => throw _privateConstructorUsedError;
  int? get drk => throw _privateConstructorUsedError;
  int? get top => throw _privateConstructorUsedError;
  int? get bot => throw _privateConstructorUsedError;
  List<dynamic>? get hs => throw _privateConstructorUsedError;

  /// Serializes this Images to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImagesCopyWith<Images> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesCopyWith<$Res> {
  factory $ImagesCopyWith(Images value, $Res Function(Images) then) =
      _$ImagesCopyWithImpl<$Res, Images>;
  @useResult
  $Res call({
    String? startdate,
    String? fullstartdate,
    String? enddate,
    String? url,
    String? urlbase,
    String? copyright,
    String? copyrightlink,
    String? title,
    String? quiz,
    bool? wp,
    String? hsh,
    int? drk,
    int? top,
    int? bot,
    List<dynamic>? hs,
  });
}

/// @nodoc
class _$ImagesCopyWithImpl<$Res, $Val extends Images>
    implements $ImagesCopyWith<$Res> {
  _$ImagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startdate = freezed,
    Object? fullstartdate = freezed,
    Object? enddate = freezed,
    Object? url = freezed,
    Object? urlbase = freezed,
    Object? copyright = freezed,
    Object? copyrightlink = freezed,
    Object? title = freezed,
    Object? quiz = freezed,
    Object? wp = freezed,
    Object? hsh = freezed,
    Object? drk = freezed,
    Object? top = freezed,
    Object? bot = freezed,
    Object? hs = freezed,
  }) {
    return _then(
      _value.copyWith(
            startdate:
                freezed == startdate
                    ? _value.startdate
                    : startdate // ignore: cast_nullable_to_non_nullable
                        as String?,
            fullstartdate:
                freezed == fullstartdate
                    ? _value.fullstartdate
                    : fullstartdate // ignore: cast_nullable_to_non_nullable
                        as String?,
            enddate:
                freezed == enddate
                    ? _value.enddate
                    : enddate // ignore: cast_nullable_to_non_nullable
                        as String?,
            url:
                freezed == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String?,
            urlbase:
                freezed == urlbase
                    ? _value.urlbase
                    : urlbase // ignore: cast_nullable_to_non_nullable
                        as String?,
            copyright:
                freezed == copyright
                    ? _value.copyright
                    : copyright // ignore: cast_nullable_to_non_nullable
                        as String?,
            copyrightlink:
                freezed == copyrightlink
                    ? _value.copyrightlink
                    : copyrightlink // ignore: cast_nullable_to_non_nullable
                        as String?,
            title:
                freezed == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String?,
            quiz:
                freezed == quiz
                    ? _value.quiz
                    : quiz // ignore: cast_nullable_to_non_nullable
                        as String?,
            wp:
                freezed == wp
                    ? _value.wp
                    : wp // ignore: cast_nullable_to_non_nullable
                        as bool?,
            hsh:
                freezed == hsh
                    ? _value.hsh
                    : hsh // ignore: cast_nullable_to_non_nullable
                        as String?,
            drk:
                freezed == drk
                    ? _value.drk
                    : drk // ignore: cast_nullable_to_non_nullable
                        as int?,
            top:
                freezed == top
                    ? _value.top
                    : top // ignore: cast_nullable_to_non_nullable
                        as int?,
            bot:
                freezed == bot
                    ? _value.bot
                    : bot // ignore: cast_nullable_to_non_nullable
                        as int?,
            hs:
                freezed == hs
                    ? _value.hs
                    : hs // ignore: cast_nullable_to_non_nullable
                        as List<dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ImagesImplCopyWith<$Res> implements $ImagesCopyWith<$Res> {
  factory _$$ImagesImplCopyWith(
    _$ImagesImpl value,
    $Res Function(_$ImagesImpl) then,
  ) = __$$ImagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? startdate,
    String? fullstartdate,
    String? enddate,
    String? url,
    String? urlbase,
    String? copyright,
    String? copyrightlink,
    String? title,
    String? quiz,
    bool? wp,
    String? hsh,
    int? drk,
    int? top,
    int? bot,
    List<dynamic>? hs,
  });
}

/// @nodoc
class __$$ImagesImplCopyWithImpl<$Res>
    extends _$ImagesCopyWithImpl<$Res, _$ImagesImpl>
    implements _$$ImagesImplCopyWith<$Res> {
  __$$ImagesImplCopyWithImpl(
    _$ImagesImpl _value,
    $Res Function(_$ImagesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startdate = freezed,
    Object? fullstartdate = freezed,
    Object? enddate = freezed,
    Object? url = freezed,
    Object? urlbase = freezed,
    Object? copyright = freezed,
    Object? copyrightlink = freezed,
    Object? title = freezed,
    Object? quiz = freezed,
    Object? wp = freezed,
    Object? hsh = freezed,
    Object? drk = freezed,
    Object? top = freezed,
    Object? bot = freezed,
    Object? hs = freezed,
  }) {
    return _then(
      _$ImagesImpl(
        startdate:
            freezed == startdate
                ? _value.startdate
                : startdate // ignore: cast_nullable_to_non_nullable
                    as String?,
        fullstartdate:
            freezed == fullstartdate
                ? _value.fullstartdate
                : fullstartdate // ignore: cast_nullable_to_non_nullable
                    as String?,
        enddate:
            freezed == enddate
                ? _value.enddate
                : enddate // ignore: cast_nullable_to_non_nullable
                    as String?,
        url:
            freezed == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String?,
        urlbase:
            freezed == urlbase
                ? _value.urlbase
                : urlbase // ignore: cast_nullable_to_non_nullable
                    as String?,
        copyright:
            freezed == copyright
                ? _value.copyright
                : copyright // ignore: cast_nullable_to_non_nullable
                    as String?,
        copyrightlink:
            freezed == copyrightlink
                ? _value.copyrightlink
                : copyrightlink // ignore: cast_nullable_to_non_nullable
                    as String?,
        title:
            freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String?,
        quiz:
            freezed == quiz
                ? _value.quiz
                : quiz // ignore: cast_nullable_to_non_nullable
                    as String?,
        wp:
            freezed == wp
                ? _value.wp
                : wp // ignore: cast_nullable_to_non_nullable
                    as bool?,
        hsh:
            freezed == hsh
                ? _value.hsh
                : hsh // ignore: cast_nullable_to_non_nullable
                    as String?,
        drk:
            freezed == drk
                ? _value.drk
                : drk // ignore: cast_nullable_to_non_nullable
                    as int?,
        top:
            freezed == top
                ? _value.top
                : top // ignore: cast_nullable_to_non_nullable
                    as int?,
        bot:
            freezed == bot
                ? _value.bot
                : bot // ignore: cast_nullable_to_non_nullable
                    as int?,
        hs:
            freezed == hs
                ? _value._hs
                : hs // ignore: cast_nullable_to_non_nullable
                    as List<dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ImagesImpl implements _Images {
  const _$ImagesImpl({
    this.startdate,
    this.fullstartdate,
    this.enddate,
    this.url,
    this.urlbase,
    this.copyright,
    this.copyrightlink,
    this.title,
    this.quiz,
    this.wp,
    this.hsh,
    this.drk,
    this.top,
    this.bot,
    final List<dynamic>? hs,
  }) : _hs = hs;

  factory _$ImagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagesImplFromJson(json);

  @override
  final String? startdate;
  @override
  final String? fullstartdate;
  @override
  final String? enddate;
  @override
  final String? url;
  @override
  final String? urlbase;
  @override
  final String? copyright;
  @override
  final String? copyrightlink;
  @override
  final String? title;
  @override
  final String? quiz;
  @override
  final bool? wp;
  @override
  final String? hsh;
  @override
  final int? drk;
  @override
  final int? top;
  @override
  final int? bot;
  final List<dynamic>? _hs;
  @override
  List<dynamic>? get hs {
    final value = _hs;
    if (value == null) return null;
    if (_hs is EqualUnmodifiableListView) return _hs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Images(startdate: $startdate, fullstartdate: $fullstartdate, enddate: $enddate, url: $url, urlbase: $urlbase, copyright: $copyright, copyrightlink: $copyrightlink, title: $title, quiz: $quiz, wp: $wp, hsh: $hsh, drk: $drk, top: $top, bot: $bot, hs: $hs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesImpl &&
            (identical(other.startdate, startdate) ||
                other.startdate == startdate) &&
            (identical(other.fullstartdate, fullstartdate) ||
                other.fullstartdate == fullstartdate) &&
            (identical(other.enddate, enddate) || other.enddate == enddate) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlbase, urlbase) || other.urlbase == urlbase) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.copyrightlink, copyrightlink) ||
                other.copyrightlink == copyrightlink) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.quiz, quiz) || other.quiz == quiz) &&
            (identical(other.wp, wp) || other.wp == wp) &&
            (identical(other.hsh, hsh) || other.hsh == hsh) &&
            (identical(other.drk, drk) || other.drk == drk) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.bot, bot) || other.bot == bot) &&
            const DeepCollectionEquality().equals(other._hs, _hs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    startdate,
    fullstartdate,
    enddate,
    url,
    urlbase,
    copyright,
    copyrightlink,
    title,
    quiz,
    wp,
    hsh,
    drk,
    top,
    bot,
    const DeepCollectionEquality().hash(_hs),
  );

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagesImplCopyWith<_$ImagesImpl> get copyWith =>
      __$$ImagesImplCopyWithImpl<_$ImagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagesImplToJson(this);
  }
}

abstract class _Images implements Images {
  const factory _Images({
    final String? startdate,
    final String? fullstartdate,
    final String? enddate,
    final String? url,
    final String? urlbase,
    final String? copyright,
    final String? copyrightlink,
    final String? title,
    final String? quiz,
    final bool? wp,
    final String? hsh,
    final int? drk,
    final int? top,
    final int? bot,
    final List<dynamic>? hs,
  }) = _$ImagesImpl;

  factory _Images.fromJson(Map<String, dynamic> json) = _$ImagesImpl.fromJson;

  @override
  String? get startdate;
  @override
  String? get fullstartdate;
  @override
  String? get enddate;
  @override
  String? get url;
  @override
  String? get urlbase;
  @override
  String? get copyright;
  @override
  String? get copyrightlink;
  @override
  String? get title;
  @override
  String? get quiz;
  @override
  bool? get wp;
  @override
  String? get hsh;
  @override
  int? get drk;
  @override
  int? get top;
  @override
  int? get bot;
  @override
  List<dynamic>? get hs;

  /// Create a copy of Images
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImagesImplCopyWith<_$ImagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
