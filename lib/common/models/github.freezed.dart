// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

GithubRelease _$GithubReleaseFromJson(Map<String, dynamic> json) {
  return _GithubRelease.fromJson(json);
}

/// @nodoc
mixin _$GithubRelease {
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'assets_url')
  String? get assetsUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload_url')
  String? get uploadUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String? get htmlUrl => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  Author? get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'node_id')
  String? get nodeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'tag_name')
  String? get tagName => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_commitish')
  String? get targetCommitish => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  bool? get draft => throw _privateConstructorUsedError;
  bool? get prerelease => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'published_at')
  String? get publishedAt => throw _privateConstructorUsedError;
  List<Assets>? get assets => throw _privateConstructorUsedError;
  @JsonKey(name: 'tarball_url')
  String? get tarballUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'zipball_url')
  String? get zipballUrl => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;

  /// Serializes this GithubRelease to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GithubRelease
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GithubReleaseCopyWith<GithubRelease> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubReleaseCopyWith<$Res> {
  factory $GithubReleaseCopyWith(
    GithubRelease value,
    $Res Function(GithubRelease) then,
  ) = _$GithubReleaseCopyWithImpl<$Res, GithubRelease>;
  @useResult
  $Res call({
    String? url,
    @JsonKey(name: 'assets_url') String? assetsUrl,
    @JsonKey(name: 'upload_url') String? uploadUrl,
    @JsonKey(name: 'html_url') String? htmlUrl,
    int? id,
    Author? author,
    @JsonKey(name: 'node_id') String? nodeId,
    @JsonKey(name: 'tag_name') String? tagName,
    @JsonKey(name: 'target_commitish') String? targetCommitish,
    String? name,
    bool? draft,
    bool? prerelease,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'published_at') String? publishedAt,
    List<Assets>? assets,
    @JsonKey(name: 'tarball_url') String? tarballUrl,
    @JsonKey(name: 'zipball_url') String? zipballUrl,
    String? body,
  });

  $AuthorCopyWith<$Res>? get author;
}

/// @nodoc
class _$GithubReleaseCopyWithImpl<$Res, $Val extends GithubRelease>
    implements $GithubReleaseCopyWith<$Res> {
  _$GithubReleaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GithubRelease
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? assetsUrl = freezed,
    Object? uploadUrl = freezed,
    Object? htmlUrl = freezed,
    Object? id = freezed,
    Object? author = freezed,
    Object? nodeId = freezed,
    Object? tagName = freezed,
    Object? targetCommitish = freezed,
    Object? name = freezed,
    Object? draft = freezed,
    Object? prerelease = freezed,
    Object? createdAt = freezed,
    Object? publishedAt = freezed,
    Object? assets = freezed,
    Object? tarballUrl = freezed,
    Object? zipballUrl = freezed,
    Object? body = freezed,
  }) {
    return _then(
      _value.copyWith(
            url:
                freezed == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String?,
            assetsUrl:
                freezed == assetsUrl
                    ? _value.assetsUrl
                    : assetsUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            uploadUrl:
                freezed == uploadUrl
                    ? _value.uploadUrl
                    : uploadUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            htmlUrl:
                freezed == htmlUrl
                    ? _value.htmlUrl
                    : htmlUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int?,
            author:
                freezed == author
                    ? _value.author
                    : author // ignore: cast_nullable_to_non_nullable
                        as Author?,
            nodeId:
                freezed == nodeId
                    ? _value.nodeId
                    : nodeId // ignore: cast_nullable_to_non_nullable
                        as String?,
            tagName:
                freezed == tagName
                    ? _value.tagName
                    : tagName // ignore: cast_nullable_to_non_nullable
                        as String?,
            targetCommitish:
                freezed == targetCommitish
                    ? _value.targetCommitish
                    : targetCommitish // ignore: cast_nullable_to_non_nullable
                        as String?,
            name:
                freezed == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String?,
            draft:
                freezed == draft
                    ? _value.draft
                    : draft // ignore: cast_nullable_to_non_nullable
                        as bool?,
            prerelease:
                freezed == prerelease
                    ? _value.prerelease
                    : prerelease // ignore: cast_nullable_to_non_nullable
                        as bool?,
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as String?,
            publishedAt:
                freezed == publishedAt
                    ? _value.publishedAt
                    : publishedAt // ignore: cast_nullable_to_non_nullable
                        as String?,
            assets:
                freezed == assets
                    ? _value.assets
                    : assets // ignore: cast_nullable_to_non_nullable
                        as List<Assets>?,
            tarballUrl:
                freezed == tarballUrl
                    ? _value.tarballUrl
                    : tarballUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            zipballUrl:
                freezed == zipballUrl
                    ? _value.zipballUrl
                    : zipballUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            body:
                freezed == body
                    ? _value.body
                    : body // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of GithubRelease
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthorCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $AuthorCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GithubReleaseImplCopyWith<$Res>
    implements $GithubReleaseCopyWith<$Res> {
  factory _$$GithubReleaseImplCopyWith(
    _$GithubReleaseImpl value,
    $Res Function(_$GithubReleaseImpl) then,
  ) = __$$GithubReleaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? url,
    @JsonKey(name: 'assets_url') String? assetsUrl,
    @JsonKey(name: 'upload_url') String? uploadUrl,
    @JsonKey(name: 'html_url') String? htmlUrl,
    int? id,
    Author? author,
    @JsonKey(name: 'node_id') String? nodeId,
    @JsonKey(name: 'tag_name') String? tagName,
    @JsonKey(name: 'target_commitish') String? targetCommitish,
    String? name,
    bool? draft,
    bool? prerelease,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'published_at') String? publishedAt,
    List<Assets>? assets,
    @JsonKey(name: 'tarball_url') String? tarballUrl,
    @JsonKey(name: 'zipball_url') String? zipballUrl,
    String? body,
  });

  @override
  $AuthorCopyWith<$Res>? get author;
}

/// @nodoc
class __$$GithubReleaseImplCopyWithImpl<$Res>
    extends _$GithubReleaseCopyWithImpl<$Res, _$GithubReleaseImpl>
    implements _$$GithubReleaseImplCopyWith<$Res> {
  __$$GithubReleaseImplCopyWithImpl(
    _$GithubReleaseImpl _value,
    $Res Function(_$GithubReleaseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GithubRelease
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? assetsUrl = freezed,
    Object? uploadUrl = freezed,
    Object? htmlUrl = freezed,
    Object? id = freezed,
    Object? author = freezed,
    Object? nodeId = freezed,
    Object? tagName = freezed,
    Object? targetCommitish = freezed,
    Object? name = freezed,
    Object? draft = freezed,
    Object? prerelease = freezed,
    Object? createdAt = freezed,
    Object? publishedAt = freezed,
    Object? assets = freezed,
    Object? tarballUrl = freezed,
    Object? zipballUrl = freezed,
    Object? body = freezed,
  }) {
    return _then(
      _$GithubReleaseImpl(
        url:
            freezed == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String?,
        assetsUrl:
            freezed == assetsUrl
                ? _value.assetsUrl
                : assetsUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        uploadUrl:
            freezed == uploadUrl
                ? _value.uploadUrl
                : uploadUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        htmlUrl:
            freezed == htmlUrl
                ? _value.htmlUrl
                : htmlUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        author:
            freezed == author
                ? _value.author
                : author // ignore: cast_nullable_to_non_nullable
                    as Author?,
        nodeId:
            freezed == nodeId
                ? _value.nodeId
                : nodeId // ignore: cast_nullable_to_non_nullable
                    as String?,
        tagName:
            freezed == tagName
                ? _value.tagName
                : tagName // ignore: cast_nullable_to_non_nullable
                    as String?,
        targetCommitish:
            freezed == targetCommitish
                ? _value.targetCommitish
                : targetCommitish // ignore: cast_nullable_to_non_nullable
                    as String?,
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        draft:
            freezed == draft
                ? _value.draft
                : draft // ignore: cast_nullable_to_non_nullable
                    as bool?,
        prerelease:
            freezed == prerelease
                ? _value.prerelease
                : prerelease // ignore: cast_nullable_to_non_nullable
                    as bool?,
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as String?,
        publishedAt:
            freezed == publishedAt
                ? _value.publishedAt
                : publishedAt // ignore: cast_nullable_to_non_nullable
                    as String?,
        assets:
            freezed == assets
                ? _value._assets
                : assets // ignore: cast_nullable_to_non_nullable
                    as List<Assets>?,
        tarballUrl:
            freezed == tarballUrl
                ? _value.tarballUrl
                : tarballUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        zipballUrl:
            freezed == zipballUrl
                ? _value.zipballUrl
                : zipballUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        body:
            freezed == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GithubReleaseImpl implements _GithubRelease {
  const _$GithubReleaseImpl({
    this.url,
    @JsonKey(name: 'assets_url') this.assetsUrl,
    @JsonKey(name: 'upload_url') this.uploadUrl,
    @JsonKey(name: 'html_url') this.htmlUrl,
    this.id,
    this.author,
    @JsonKey(name: 'node_id') this.nodeId,
    @JsonKey(name: 'tag_name') this.tagName,
    @JsonKey(name: 'target_commitish') this.targetCommitish,
    this.name,
    this.draft,
    this.prerelease,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'published_at') this.publishedAt,
    final List<Assets>? assets,
    @JsonKey(name: 'tarball_url') this.tarballUrl,
    @JsonKey(name: 'zipball_url') this.zipballUrl,
    this.body,
  }) : _assets = assets;

  factory _$GithubReleaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GithubReleaseImplFromJson(json);

  @override
  final String? url;
  @override
  @JsonKey(name: 'assets_url')
  final String? assetsUrl;
  @override
  @JsonKey(name: 'upload_url')
  final String? uploadUrl;
  @override
  @JsonKey(name: 'html_url')
  final String? htmlUrl;
  @override
  final int? id;
  @override
  final Author? author;
  @override
  @JsonKey(name: 'node_id')
  final String? nodeId;
  @override
  @JsonKey(name: 'tag_name')
  final String? tagName;
  @override
  @JsonKey(name: 'target_commitish')
  final String? targetCommitish;
  @override
  final String? name;
  @override
  final bool? draft;
  @override
  final bool? prerelease;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'published_at')
  final String? publishedAt;
  final List<Assets>? _assets;
  @override
  List<Assets>? get assets {
    final value = _assets;
    if (value == null) return null;
    if (_assets is EqualUnmodifiableListView) return _assets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'tarball_url')
  final String? tarballUrl;
  @override
  @JsonKey(name: 'zipball_url')
  final String? zipballUrl;
  @override
  final String? body;

  @override
  String toString() {
    return 'GithubRelease(url: $url, assetsUrl: $assetsUrl, uploadUrl: $uploadUrl, htmlUrl: $htmlUrl, id: $id, author: $author, nodeId: $nodeId, tagName: $tagName, targetCommitish: $targetCommitish, name: $name, draft: $draft, prerelease: $prerelease, createdAt: $createdAt, publishedAt: $publishedAt, assets: $assets, tarballUrl: $tarballUrl, zipballUrl: $zipballUrl, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GithubReleaseImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.assetsUrl, assetsUrl) ||
                other.assetsUrl == assetsUrl) &&
            (identical(other.uploadUrl, uploadUrl) ||
                other.uploadUrl == uploadUrl) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.nodeId, nodeId) || other.nodeId == nodeId) &&
            (identical(other.tagName, tagName) || other.tagName == tagName) &&
            (identical(other.targetCommitish, targetCommitish) ||
                other.targetCommitish == targetCommitish) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.draft, draft) || other.draft == draft) &&
            (identical(other.prerelease, prerelease) ||
                other.prerelease == prerelease) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            const DeepCollectionEquality().equals(other._assets, _assets) &&
            (identical(other.tarballUrl, tarballUrl) ||
                other.tarballUrl == tarballUrl) &&
            (identical(other.zipballUrl, zipballUrl) ||
                other.zipballUrl == zipballUrl) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    url,
    assetsUrl,
    uploadUrl,
    htmlUrl,
    id,
    author,
    nodeId,
    tagName,
    targetCommitish,
    name,
    draft,
    prerelease,
    createdAt,
    publishedAt,
    const DeepCollectionEquality().hash(_assets),
    tarballUrl,
    zipballUrl,
    body,
  );

  /// Create a copy of GithubRelease
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GithubReleaseImplCopyWith<_$GithubReleaseImpl> get copyWith =>
      __$$GithubReleaseImplCopyWithImpl<_$GithubReleaseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GithubReleaseImplToJson(this);
  }
}

abstract class _GithubRelease implements GithubRelease {
  const factory _GithubRelease({
    final String? url,
    @JsonKey(name: 'assets_url') final String? assetsUrl,
    @JsonKey(name: 'upload_url') final String? uploadUrl,
    @JsonKey(name: 'html_url') final String? htmlUrl,
    final int? id,
    final Author? author,
    @JsonKey(name: 'node_id') final String? nodeId,
    @JsonKey(name: 'tag_name') final String? tagName,
    @JsonKey(name: 'target_commitish') final String? targetCommitish,
    final String? name,
    final bool? draft,
    final bool? prerelease,
    @JsonKey(name: 'created_at') final String? createdAt,
    @JsonKey(name: 'published_at') final String? publishedAt,
    final List<Assets>? assets,
    @JsonKey(name: 'tarball_url') final String? tarballUrl,
    @JsonKey(name: 'zipball_url') final String? zipballUrl,
    final String? body,
  }) = _$GithubReleaseImpl;

  factory _GithubRelease.fromJson(Map<String, dynamic> json) =
      _$GithubReleaseImpl.fromJson;

  @override
  String? get url;
  @override
  @JsonKey(name: 'assets_url')
  String? get assetsUrl;
  @override
  @JsonKey(name: 'upload_url')
  String? get uploadUrl;
  @override
  @JsonKey(name: 'html_url')
  String? get htmlUrl;
  @override
  int? get id;
  @override
  Author? get author;
  @override
  @JsonKey(name: 'node_id')
  String? get nodeId;
  @override
  @JsonKey(name: 'tag_name')
  String? get tagName;
  @override
  @JsonKey(name: 'target_commitish')
  String? get targetCommitish;
  @override
  String? get name;
  @override
  bool? get draft;
  @override
  bool? get prerelease;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'published_at')
  String? get publishedAt;
  @override
  List<Assets>? get assets;
  @override
  @JsonKey(name: 'tarball_url')
  String? get tarballUrl;
  @override
  @JsonKey(name: 'zipball_url')
  String? get zipballUrl;
  @override
  String? get body;

  /// Create a copy of GithubRelease
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GithubReleaseImplCopyWith<_$GithubReleaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Assets _$AssetsFromJson(Map<String, dynamic> json) {
  return _Assets.fromJson(json);
}

/// @nodoc
mixin _$Assets {
  String? get url => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'node_id')
  String? get nodeId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  dynamic get label => throw _privateConstructorUsedError;
  Uploader? get uploader => throw _privateConstructorUsedError;
  @JsonKey(name: 'content_type')
  String? get contentType => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'download_count')
  int? get downloadCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'browser_download_url')
  String? get browserDownloadUrl => throw _privateConstructorUsedError;

  /// Serializes this Assets to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Assets
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssetsCopyWith<Assets> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetsCopyWith<$Res> {
  factory $AssetsCopyWith(Assets value, $Res Function(Assets) then) =
      _$AssetsCopyWithImpl<$Res, Assets>;
  @useResult
  $Res call({
    String? url,
    int? id,
    @JsonKey(name: 'node_id') String? nodeId,
    String? name,
    dynamic label,
    Uploader? uploader,
    @JsonKey(name: 'content_type') String? contentType,
    String? state,
    int? size,
    @JsonKey(name: 'download_count') int? downloadCount,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'browser_download_url') String? browserDownloadUrl,
  });

  $UploaderCopyWith<$Res>? get uploader;
}

/// @nodoc
class _$AssetsCopyWithImpl<$Res, $Val extends Assets>
    implements $AssetsCopyWith<$Res> {
  _$AssetsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Assets
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? id = freezed,
    Object? nodeId = freezed,
    Object? name = freezed,
    Object? label = freezed,
    Object? uploader = freezed,
    Object? contentType = freezed,
    Object? state = freezed,
    Object? size = freezed,
    Object? downloadCount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? browserDownloadUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            url:
                freezed == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String?,
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int?,
            nodeId:
                freezed == nodeId
                    ? _value.nodeId
                    : nodeId // ignore: cast_nullable_to_non_nullable
                        as String?,
            name:
                freezed == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String?,
            label:
                freezed == label
                    ? _value.label
                    : label // ignore: cast_nullable_to_non_nullable
                        as dynamic,
            uploader:
                freezed == uploader
                    ? _value.uploader
                    : uploader // ignore: cast_nullable_to_non_nullable
                        as Uploader?,
            contentType:
                freezed == contentType
                    ? _value.contentType
                    : contentType // ignore: cast_nullable_to_non_nullable
                        as String?,
            state:
                freezed == state
                    ? _value.state
                    : state // ignore: cast_nullable_to_non_nullable
                        as String?,
            size:
                freezed == size
                    ? _value.size
                    : size // ignore: cast_nullable_to_non_nullable
                        as int?,
            downloadCount:
                freezed == downloadCount
                    ? _value.downloadCount
                    : downloadCount // ignore: cast_nullable_to_non_nullable
                        as int?,
            createdAt:
                freezed == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as String?,
            updatedAt:
                freezed == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as String?,
            browserDownloadUrl:
                freezed == browserDownloadUrl
                    ? _value.browserDownloadUrl
                    : browserDownloadUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of Assets
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UploaderCopyWith<$Res>? get uploader {
    if (_value.uploader == null) {
      return null;
    }

    return $UploaderCopyWith<$Res>(_value.uploader!, (value) {
      return _then(_value.copyWith(uploader: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AssetsImplCopyWith<$Res> implements $AssetsCopyWith<$Res> {
  factory _$$AssetsImplCopyWith(
    _$AssetsImpl value,
    $Res Function(_$AssetsImpl) then,
  ) = __$$AssetsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? url,
    int? id,
    @JsonKey(name: 'node_id') String? nodeId,
    String? name,
    dynamic label,
    Uploader? uploader,
    @JsonKey(name: 'content_type') String? contentType,
    String? state,
    int? size,
    @JsonKey(name: 'download_count') int? downloadCount,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'browser_download_url') String? browserDownloadUrl,
  });

  @override
  $UploaderCopyWith<$Res>? get uploader;
}

/// @nodoc
class __$$AssetsImplCopyWithImpl<$Res>
    extends _$AssetsCopyWithImpl<$Res, _$AssetsImpl>
    implements _$$AssetsImplCopyWith<$Res> {
  __$$AssetsImplCopyWithImpl(
    _$AssetsImpl _value,
    $Res Function(_$AssetsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Assets
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? id = freezed,
    Object? nodeId = freezed,
    Object? name = freezed,
    Object? label = freezed,
    Object? uploader = freezed,
    Object? contentType = freezed,
    Object? state = freezed,
    Object? size = freezed,
    Object? downloadCount = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? browserDownloadUrl = freezed,
  }) {
    return _then(
      _$AssetsImpl(
        url:
            freezed == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String?,
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        nodeId:
            freezed == nodeId
                ? _value.nodeId
                : nodeId // ignore: cast_nullable_to_non_nullable
                    as String?,
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        label:
            freezed == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                    as dynamic,
        uploader:
            freezed == uploader
                ? _value.uploader
                : uploader // ignore: cast_nullable_to_non_nullable
                    as Uploader?,
        contentType:
            freezed == contentType
                ? _value.contentType
                : contentType // ignore: cast_nullable_to_non_nullable
                    as String?,
        state:
            freezed == state
                ? _value.state
                : state // ignore: cast_nullable_to_non_nullable
                    as String?,
        size:
            freezed == size
                ? _value.size
                : size // ignore: cast_nullable_to_non_nullable
                    as int?,
        downloadCount:
            freezed == downloadCount
                ? _value.downloadCount
                : downloadCount // ignore: cast_nullable_to_non_nullable
                    as int?,
        createdAt:
            freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as String?,
        updatedAt:
            freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as String?,
        browserDownloadUrl:
            freezed == browserDownloadUrl
                ? _value.browserDownloadUrl
                : browserDownloadUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AssetsImpl implements _Assets {
  const _$AssetsImpl({
    this.url,
    this.id,
    @JsonKey(name: 'node_id') this.nodeId,
    this.name,
    this.label,
    this.uploader,
    @JsonKey(name: 'content_type') this.contentType,
    this.state,
    this.size,
    @JsonKey(name: 'download_count') this.downloadCount,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    @JsonKey(name: 'browser_download_url') this.browserDownloadUrl,
  });

  factory _$AssetsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssetsImplFromJson(json);

  @override
  final String? url;
  @override
  final int? id;
  @override
  @JsonKey(name: 'node_id')
  final String? nodeId;
  @override
  final String? name;
  @override
  final dynamic label;
  @override
  final Uploader? uploader;
  @override
  @JsonKey(name: 'content_type')
  final String? contentType;
  @override
  final String? state;
  @override
  final int? size;
  @override
  @JsonKey(name: 'download_count')
  final int? downloadCount;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'browser_download_url')
  final String? browserDownloadUrl;

  @override
  String toString() {
    return 'Assets(url: $url, id: $id, nodeId: $nodeId, name: $name, label: $label, uploader: $uploader, contentType: $contentType, state: $state, size: $size, downloadCount: $downloadCount, createdAt: $createdAt, updatedAt: $updatedAt, browserDownloadUrl: $browserDownloadUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetsImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nodeId, nodeId) || other.nodeId == nodeId) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.label, label) &&
            (identical(other.uploader, uploader) ||
                other.uploader == uploader) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.downloadCount, downloadCount) ||
                other.downloadCount == downloadCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.browserDownloadUrl, browserDownloadUrl) ||
                other.browserDownloadUrl == browserDownloadUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    url,
    id,
    nodeId,
    name,
    const DeepCollectionEquality().hash(label),
    uploader,
    contentType,
    state,
    size,
    downloadCount,
    createdAt,
    updatedAt,
    browserDownloadUrl,
  );

  /// Create a copy of Assets
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssetsImplCopyWith<_$AssetsImpl> get copyWith =>
      __$$AssetsImplCopyWithImpl<_$AssetsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssetsImplToJson(this);
  }
}

abstract class _Assets implements Assets {
  const factory _Assets({
    final String? url,
    final int? id,
    @JsonKey(name: 'node_id') final String? nodeId,
    final String? name,
    final dynamic label,
    final Uploader? uploader,
    @JsonKey(name: 'content_type') final String? contentType,
    final String? state,
    final int? size,
    @JsonKey(name: 'download_count') final int? downloadCount,
    @JsonKey(name: 'created_at') final String? createdAt,
    @JsonKey(name: 'updated_at') final String? updatedAt,
    @JsonKey(name: 'browser_download_url') final String? browserDownloadUrl,
  }) = _$AssetsImpl;

  factory _Assets.fromJson(Map<String, dynamic> json) = _$AssetsImpl.fromJson;

  @override
  String? get url;
  @override
  int? get id;
  @override
  @JsonKey(name: 'node_id')
  String? get nodeId;
  @override
  String? get name;
  @override
  dynamic get label;
  @override
  Uploader? get uploader;
  @override
  @JsonKey(name: 'content_type')
  String? get contentType;
  @override
  String? get state;
  @override
  int? get size;
  @override
  @JsonKey(name: 'download_count')
  int? get downloadCount;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'browser_download_url')
  String? get browserDownloadUrl;

  /// Create a copy of Assets
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssetsImplCopyWith<_$AssetsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Uploader _$UploaderFromJson(Map<String, dynamic> json) {
  return _Uploader.fromJson(json);
}

/// @nodoc
mixin _$Uploader {
  String? get login => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'node_id')
  String? get nodeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'gravatar_id')
  String? get gravatarId => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String? get htmlUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'followers_url')
  String? get followersUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'following_url')
  String? get followingUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'gists_url')
  String? get gistsUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'starred_url')
  String? get starredUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscriptions_url')
  String? get subscriptionsUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'organizations_url')
  String? get organizationsUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'repos_url')
  String? get reposUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'events_url')
  String? get eventsUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'received_events_url')
  String? get receivedEventsUrl => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_view_type')
  String? get userViewType => throw _privateConstructorUsedError;
  @JsonKey(name: 'site_admin')
  bool? get siteAdmin => throw _privateConstructorUsedError;

  /// Serializes this Uploader to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Uploader
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploaderCopyWith<Uploader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploaderCopyWith<$Res> {
  factory $UploaderCopyWith(Uploader value, $Res Function(Uploader) then) =
      _$UploaderCopyWithImpl<$Res, Uploader>;
  @useResult
  $Res call({
    String? login,
    int? id,
    @JsonKey(name: 'node_id') String? nodeId,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'gravatar_id') String? gravatarId,
    String? url,
    @JsonKey(name: 'html_url') String? htmlUrl,
    @JsonKey(name: 'followers_url') String? followersUrl,
    @JsonKey(name: 'following_url') String? followingUrl,
    @JsonKey(name: 'gists_url') String? gistsUrl,
    @JsonKey(name: 'starred_url') String? starredUrl,
    @JsonKey(name: 'subscriptions_url') String? subscriptionsUrl,
    @JsonKey(name: 'organizations_url') String? organizationsUrl,
    @JsonKey(name: 'repos_url') String? reposUrl,
    @JsonKey(name: 'events_url') String? eventsUrl,
    @JsonKey(name: 'received_events_url') String? receivedEventsUrl,
    String? type,
    @JsonKey(name: 'user_view_type') String? userViewType,
    @JsonKey(name: 'site_admin') bool? siteAdmin,
  });
}

/// @nodoc
class _$UploaderCopyWithImpl<$Res, $Val extends Uploader>
    implements $UploaderCopyWith<$Res> {
  _$UploaderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Uploader
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = freezed,
    Object? id = freezed,
    Object? nodeId = freezed,
    Object? avatarUrl = freezed,
    Object? gravatarId = freezed,
    Object? url = freezed,
    Object? htmlUrl = freezed,
    Object? followersUrl = freezed,
    Object? followingUrl = freezed,
    Object? gistsUrl = freezed,
    Object? starredUrl = freezed,
    Object? subscriptionsUrl = freezed,
    Object? organizationsUrl = freezed,
    Object? reposUrl = freezed,
    Object? eventsUrl = freezed,
    Object? receivedEventsUrl = freezed,
    Object? type = freezed,
    Object? userViewType = freezed,
    Object? siteAdmin = freezed,
  }) {
    return _then(
      _value.copyWith(
            login:
                freezed == login
                    ? _value.login
                    : login // ignore: cast_nullable_to_non_nullable
                        as String?,
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int?,
            nodeId:
                freezed == nodeId
                    ? _value.nodeId
                    : nodeId // ignore: cast_nullable_to_non_nullable
                        as String?,
            avatarUrl:
                freezed == avatarUrl
                    ? _value.avatarUrl
                    : avatarUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            gravatarId:
                freezed == gravatarId
                    ? _value.gravatarId
                    : gravatarId // ignore: cast_nullable_to_non_nullable
                        as String?,
            url:
                freezed == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String?,
            htmlUrl:
                freezed == htmlUrl
                    ? _value.htmlUrl
                    : htmlUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            followersUrl:
                freezed == followersUrl
                    ? _value.followersUrl
                    : followersUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            followingUrl:
                freezed == followingUrl
                    ? _value.followingUrl
                    : followingUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            gistsUrl:
                freezed == gistsUrl
                    ? _value.gistsUrl
                    : gistsUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            starredUrl:
                freezed == starredUrl
                    ? _value.starredUrl
                    : starredUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            subscriptionsUrl:
                freezed == subscriptionsUrl
                    ? _value.subscriptionsUrl
                    : subscriptionsUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            organizationsUrl:
                freezed == organizationsUrl
                    ? _value.organizationsUrl
                    : organizationsUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            reposUrl:
                freezed == reposUrl
                    ? _value.reposUrl
                    : reposUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            eventsUrl:
                freezed == eventsUrl
                    ? _value.eventsUrl
                    : eventsUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            receivedEventsUrl:
                freezed == receivedEventsUrl
                    ? _value.receivedEventsUrl
                    : receivedEventsUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            type:
                freezed == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String?,
            userViewType:
                freezed == userViewType
                    ? _value.userViewType
                    : userViewType // ignore: cast_nullable_to_non_nullable
                        as String?,
            siteAdmin:
                freezed == siteAdmin
                    ? _value.siteAdmin
                    : siteAdmin // ignore: cast_nullable_to_non_nullable
                        as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UploaderImplCopyWith<$Res>
    implements $UploaderCopyWith<$Res> {
  factory _$$UploaderImplCopyWith(
    _$UploaderImpl value,
    $Res Function(_$UploaderImpl) then,
  ) = __$$UploaderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? login,
    int? id,
    @JsonKey(name: 'node_id') String? nodeId,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'gravatar_id') String? gravatarId,
    String? url,
    @JsonKey(name: 'html_url') String? htmlUrl,
    @JsonKey(name: 'followers_url') String? followersUrl,
    @JsonKey(name: 'following_url') String? followingUrl,
    @JsonKey(name: 'gists_url') String? gistsUrl,
    @JsonKey(name: 'starred_url') String? starredUrl,
    @JsonKey(name: 'subscriptions_url') String? subscriptionsUrl,
    @JsonKey(name: 'organizations_url') String? organizationsUrl,
    @JsonKey(name: 'repos_url') String? reposUrl,
    @JsonKey(name: 'events_url') String? eventsUrl,
    @JsonKey(name: 'received_events_url') String? receivedEventsUrl,
    String? type,
    @JsonKey(name: 'user_view_type') String? userViewType,
    @JsonKey(name: 'site_admin') bool? siteAdmin,
  });
}

/// @nodoc
class __$$UploaderImplCopyWithImpl<$Res>
    extends _$UploaderCopyWithImpl<$Res, _$UploaderImpl>
    implements _$$UploaderImplCopyWith<$Res> {
  __$$UploaderImplCopyWithImpl(
    _$UploaderImpl _value,
    $Res Function(_$UploaderImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Uploader
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = freezed,
    Object? id = freezed,
    Object? nodeId = freezed,
    Object? avatarUrl = freezed,
    Object? gravatarId = freezed,
    Object? url = freezed,
    Object? htmlUrl = freezed,
    Object? followersUrl = freezed,
    Object? followingUrl = freezed,
    Object? gistsUrl = freezed,
    Object? starredUrl = freezed,
    Object? subscriptionsUrl = freezed,
    Object? organizationsUrl = freezed,
    Object? reposUrl = freezed,
    Object? eventsUrl = freezed,
    Object? receivedEventsUrl = freezed,
    Object? type = freezed,
    Object? userViewType = freezed,
    Object? siteAdmin = freezed,
  }) {
    return _then(
      _$UploaderImpl(
        login:
            freezed == login
                ? _value.login
                : login // ignore: cast_nullable_to_non_nullable
                    as String?,
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        nodeId:
            freezed == nodeId
                ? _value.nodeId
                : nodeId // ignore: cast_nullable_to_non_nullable
                    as String?,
        avatarUrl:
            freezed == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        gravatarId:
            freezed == gravatarId
                ? _value.gravatarId
                : gravatarId // ignore: cast_nullable_to_non_nullable
                    as String?,
        url:
            freezed == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String?,
        htmlUrl:
            freezed == htmlUrl
                ? _value.htmlUrl
                : htmlUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        followersUrl:
            freezed == followersUrl
                ? _value.followersUrl
                : followersUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        followingUrl:
            freezed == followingUrl
                ? _value.followingUrl
                : followingUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        gistsUrl:
            freezed == gistsUrl
                ? _value.gistsUrl
                : gistsUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        starredUrl:
            freezed == starredUrl
                ? _value.starredUrl
                : starredUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        subscriptionsUrl:
            freezed == subscriptionsUrl
                ? _value.subscriptionsUrl
                : subscriptionsUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        organizationsUrl:
            freezed == organizationsUrl
                ? _value.organizationsUrl
                : organizationsUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        reposUrl:
            freezed == reposUrl
                ? _value.reposUrl
                : reposUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        eventsUrl:
            freezed == eventsUrl
                ? _value.eventsUrl
                : eventsUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        receivedEventsUrl:
            freezed == receivedEventsUrl
                ? _value.receivedEventsUrl
                : receivedEventsUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        type:
            freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String?,
        userViewType:
            freezed == userViewType
                ? _value.userViewType
                : userViewType // ignore: cast_nullable_to_non_nullable
                    as String?,
        siteAdmin:
            freezed == siteAdmin
                ? _value.siteAdmin
                : siteAdmin // ignore: cast_nullable_to_non_nullable
                    as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UploaderImpl implements _Uploader {
  const _$UploaderImpl({
    this.login,
    this.id,
    @JsonKey(name: 'node_id') this.nodeId,
    @JsonKey(name: 'avatar_url') this.avatarUrl,
    @JsonKey(name: 'gravatar_id') this.gravatarId,
    this.url,
    @JsonKey(name: 'html_url') this.htmlUrl,
    @JsonKey(name: 'followers_url') this.followersUrl,
    @JsonKey(name: 'following_url') this.followingUrl,
    @JsonKey(name: 'gists_url') this.gistsUrl,
    @JsonKey(name: 'starred_url') this.starredUrl,
    @JsonKey(name: 'subscriptions_url') this.subscriptionsUrl,
    @JsonKey(name: 'organizations_url') this.organizationsUrl,
    @JsonKey(name: 'repos_url') this.reposUrl,
    @JsonKey(name: 'events_url') this.eventsUrl,
    @JsonKey(name: 'received_events_url') this.receivedEventsUrl,
    this.type,
    @JsonKey(name: 'user_view_type') this.userViewType,
    @JsonKey(name: 'site_admin') this.siteAdmin,
  });

  factory _$UploaderImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploaderImplFromJson(json);

  @override
  final String? login;
  @override
  final int? id;
  @override
  @JsonKey(name: 'node_id')
  final String? nodeId;
  @override
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;
  @override
  @JsonKey(name: 'gravatar_id')
  final String? gravatarId;
  @override
  final String? url;
  @override
  @JsonKey(name: 'html_url')
  final String? htmlUrl;
  @override
  @JsonKey(name: 'followers_url')
  final String? followersUrl;
  @override
  @JsonKey(name: 'following_url')
  final String? followingUrl;
  @override
  @JsonKey(name: 'gists_url')
  final String? gistsUrl;
  @override
  @JsonKey(name: 'starred_url')
  final String? starredUrl;
  @override
  @JsonKey(name: 'subscriptions_url')
  final String? subscriptionsUrl;
  @override
  @JsonKey(name: 'organizations_url')
  final String? organizationsUrl;
  @override
  @JsonKey(name: 'repos_url')
  final String? reposUrl;
  @override
  @JsonKey(name: 'events_url')
  final String? eventsUrl;
  @override
  @JsonKey(name: 'received_events_url')
  final String? receivedEventsUrl;
  @override
  final String? type;
  @override
  @JsonKey(name: 'user_view_type')
  final String? userViewType;
  @override
  @JsonKey(name: 'site_admin')
  final bool? siteAdmin;

  @override
  String toString() {
    return 'Uploader(login: $login, id: $id, nodeId: $nodeId, avatarUrl: $avatarUrl, gravatarId: $gravatarId, url: $url, htmlUrl: $htmlUrl, followersUrl: $followersUrl, followingUrl: $followingUrl, gistsUrl: $gistsUrl, starredUrl: $starredUrl, subscriptionsUrl: $subscriptionsUrl, organizationsUrl: $organizationsUrl, reposUrl: $reposUrl, eventsUrl: $eventsUrl, receivedEventsUrl: $receivedEventsUrl, type: $type, userViewType: $userViewType, siteAdmin: $siteAdmin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploaderImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nodeId, nodeId) || other.nodeId == nodeId) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.gravatarId, gravatarId) ||
                other.gravatarId == gravatarId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.followersUrl, followersUrl) ||
                other.followersUrl == followersUrl) &&
            (identical(other.followingUrl, followingUrl) ||
                other.followingUrl == followingUrl) &&
            (identical(other.gistsUrl, gistsUrl) ||
                other.gistsUrl == gistsUrl) &&
            (identical(other.starredUrl, starredUrl) ||
                other.starredUrl == starredUrl) &&
            (identical(other.subscriptionsUrl, subscriptionsUrl) ||
                other.subscriptionsUrl == subscriptionsUrl) &&
            (identical(other.organizationsUrl, organizationsUrl) ||
                other.organizationsUrl == organizationsUrl) &&
            (identical(other.reposUrl, reposUrl) ||
                other.reposUrl == reposUrl) &&
            (identical(other.eventsUrl, eventsUrl) ||
                other.eventsUrl == eventsUrl) &&
            (identical(other.receivedEventsUrl, receivedEventsUrl) ||
                other.receivedEventsUrl == receivedEventsUrl) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.userViewType, userViewType) ||
                other.userViewType == userViewType) &&
            (identical(other.siteAdmin, siteAdmin) ||
                other.siteAdmin == siteAdmin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    login,
    id,
    nodeId,
    avatarUrl,
    gravatarId,
    url,
    htmlUrl,
    followersUrl,
    followingUrl,
    gistsUrl,
    starredUrl,
    subscriptionsUrl,
    organizationsUrl,
    reposUrl,
    eventsUrl,
    receivedEventsUrl,
    type,
    userViewType,
    siteAdmin,
  ]);

  /// Create a copy of Uploader
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploaderImplCopyWith<_$UploaderImpl> get copyWith =>
      __$$UploaderImplCopyWithImpl<_$UploaderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploaderImplToJson(this);
  }
}

abstract class _Uploader implements Uploader {
  const factory _Uploader({
    final String? login,
    final int? id,
    @JsonKey(name: 'node_id') final String? nodeId,
    @JsonKey(name: 'avatar_url') final String? avatarUrl,
    @JsonKey(name: 'gravatar_id') final String? gravatarId,
    final String? url,
    @JsonKey(name: 'html_url') final String? htmlUrl,
    @JsonKey(name: 'followers_url') final String? followersUrl,
    @JsonKey(name: 'following_url') final String? followingUrl,
    @JsonKey(name: 'gists_url') final String? gistsUrl,
    @JsonKey(name: 'starred_url') final String? starredUrl,
    @JsonKey(name: 'subscriptions_url') final String? subscriptionsUrl,
    @JsonKey(name: 'organizations_url') final String? organizationsUrl,
    @JsonKey(name: 'repos_url') final String? reposUrl,
    @JsonKey(name: 'events_url') final String? eventsUrl,
    @JsonKey(name: 'received_events_url') final String? receivedEventsUrl,
    final String? type,
    @JsonKey(name: 'user_view_type') final String? userViewType,
    @JsonKey(name: 'site_admin') final bool? siteAdmin,
  }) = _$UploaderImpl;

  factory _Uploader.fromJson(Map<String, dynamic> json) =
      _$UploaderImpl.fromJson;

  @override
  String? get login;
  @override
  int? get id;
  @override
  @JsonKey(name: 'node_id')
  String? get nodeId;
  @override
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl;
  @override
  @JsonKey(name: 'gravatar_id')
  String? get gravatarId;
  @override
  String? get url;
  @override
  @JsonKey(name: 'html_url')
  String? get htmlUrl;
  @override
  @JsonKey(name: 'followers_url')
  String? get followersUrl;
  @override
  @JsonKey(name: 'following_url')
  String? get followingUrl;
  @override
  @JsonKey(name: 'gists_url')
  String? get gistsUrl;
  @override
  @JsonKey(name: 'starred_url')
  String? get starredUrl;
  @override
  @JsonKey(name: 'subscriptions_url')
  String? get subscriptionsUrl;
  @override
  @JsonKey(name: 'organizations_url')
  String? get organizationsUrl;
  @override
  @JsonKey(name: 'repos_url')
  String? get reposUrl;
  @override
  @JsonKey(name: 'events_url')
  String? get eventsUrl;
  @override
  @JsonKey(name: 'received_events_url')
  String? get receivedEventsUrl;
  @override
  String? get type;
  @override
  @JsonKey(name: 'user_view_type')
  String? get userViewType;
  @override
  @JsonKey(name: 'site_admin')
  bool? get siteAdmin;

  /// Create a copy of Uploader
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploaderImplCopyWith<_$UploaderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return _Author.fromJson(json);
}

/// @nodoc
mixin _$Author {
  String? get login => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'node_id')
  String? get nodeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'gravatar_id')
  String? get gravatarId => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String? get htmlUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'followers_url')
  String? get followersUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'following_url')
  String? get followingUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'gists_url')
  String? get gistsUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'starred_url')
  String? get starredUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscriptions_url')
  String? get subscriptionsUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'organizations_url')
  String? get organizationsUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'repos_url')
  String? get reposUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'events_url')
  String? get eventsUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'received_events_url')
  String? get receivedEventsUrl => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_view_type')
  String? get userViewType => throw _privateConstructorUsedError;
  @JsonKey(name: 'site_admin')
  bool? get siteAdmin => throw _privateConstructorUsedError;

  /// Serializes this Author to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthorCopyWith<Author> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorCopyWith<$Res> {
  factory $AuthorCopyWith(Author value, $Res Function(Author) then) =
      _$AuthorCopyWithImpl<$Res, Author>;
  @useResult
  $Res call({
    String? login,
    int? id,
    @JsonKey(name: 'node_id') String? nodeId,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'gravatar_id') String? gravatarId,
    String? url,
    @JsonKey(name: 'html_url') String? htmlUrl,
    @JsonKey(name: 'followers_url') String? followersUrl,
    @JsonKey(name: 'following_url') String? followingUrl,
    @JsonKey(name: 'gists_url') String? gistsUrl,
    @JsonKey(name: 'starred_url') String? starredUrl,
    @JsonKey(name: 'subscriptions_url') String? subscriptionsUrl,
    @JsonKey(name: 'organizations_url') String? organizationsUrl,
    @JsonKey(name: 'repos_url') String? reposUrl,
    @JsonKey(name: 'events_url') String? eventsUrl,
    @JsonKey(name: 'received_events_url') String? receivedEventsUrl,
    String? type,
    @JsonKey(name: 'user_view_type') String? userViewType,
    @JsonKey(name: 'site_admin') bool? siteAdmin,
  });
}

/// @nodoc
class _$AuthorCopyWithImpl<$Res, $Val extends Author>
    implements $AuthorCopyWith<$Res> {
  _$AuthorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = freezed,
    Object? id = freezed,
    Object? nodeId = freezed,
    Object? avatarUrl = freezed,
    Object? gravatarId = freezed,
    Object? url = freezed,
    Object? htmlUrl = freezed,
    Object? followersUrl = freezed,
    Object? followingUrl = freezed,
    Object? gistsUrl = freezed,
    Object? starredUrl = freezed,
    Object? subscriptionsUrl = freezed,
    Object? organizationsUrl = freezed,
    Object? reposUrl = freezed,
    Object? eventsUrl = freezed,
    Object? receivedEventsUrl = freezed,
    Object? type = freezed,
    Object? userViewType = freezed,
    Object? siteAdmin = freezed,
  }) {
    return _then(
      _value.copyWith(
            login:
                freezed == login
                    ? _value.login
                    : login // ignore: cast_nullable_to_non_nullable
                        as String?,
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int?,
            nodeId:
                freezed == nodeId
                    ? _value.nodeId
                    : nodeId // ignore: cast_nullable_to_non_nullable
                        as String?,
            avatarUrl:
                freezed == avatarUrl
                    ? _value.avatarUrl
                    : avatarUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            gravatarId:
                freezed == gravatarId
                    ? _value.gravatarId
                    : gravatarId // ignore: cast_nullable_to_non_nullable
                        as String?,
            url:
                freezed == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String?,
            htmlUrl:
                freezed == htmlUrl
                    ? _value.htmlUrl
                    : htmlUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            followersUrl:
                freezed == followersUrl
                    ? _value.followersUrl
                    : followersUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            followingUrl:
                freezed == followingUrl
                    ? _value.followingUrl
                    : followingUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            gistsUrl:
                freezed == gistsUrl
                    ? _value.gistsUrl
                    : gistsUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            starredUrl:
                freezed == starredUrl
                    ? _value.starredUrl
                    : starredUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            subscriptionsUrl:
                freezed == subscriptionsUrl
                    ? _value.subscriptionsUrl
                    : subscriptionsUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            organizationsUrl:
                freezed == organizationsUrl
                    ? _value.organizationsUrl
                    : organizationsUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            reposUrl:
                freezed == reposUrl
                    ? _value.reposUrl
                    : reposUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            eventsUrl:
                freezed == eventsUrl
                    ? _value.eventsUrl
                    : eventsUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            receivedEventsUrl:
                freezed == receivedEventsUrl
                    ? _value.receivedEventsUrl
                    : receivedEventsUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            type:
                freezed == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String?,
            userViewType:
                freezed == userViewType
                    ? _value.userViewType
                    : userViewType // ignore: cast_nullable_to_non_nullable
                        as String?,
            siteAdmin:
                freezed == siteAdmin
                    ? _value.siteAdmin
                    : siteAdmin // ignore: cast_nullable_to_non_nullable
                        as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AuthorImplCopyWith<$Res> implements $AuthorCopyWith<$Res> {
  factory _$$AuthorImplCopyWith(
    _$AuthorImpl value,
    $Res Function(_$AuthorImpl) then,
  ) = __$$AuthorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? login,
    int? id,
    @JsonKey(name: 'node_id') String? nodeId,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'gravatar_id') String? gravatarId,
    String? url,
    @JsonKey(name: 'html_url') String? htmlUrl,
    @JsonKey(name: 'followers_url') String? followersUrl,
    @JsonKey(name: 'following_url') String? followingUrl,
    @JsonKey(name: 'gists_url') String? gistsUrl,
    @JsonKey(name: 'starred_url') String? starredUrl,
    @JsonKey(name: 'subscriptions_url') String? subscriptionsUrl,
    @JsonKey(name: 'organizations_url') String? organizationsUrl,
    @JsonKey(name: 'repos_url') String? reposUrl,
    @JsonKey(name: 'events_url') String? eventsUrl,
    @JsonKey(name: 'received_events_url') String? receivedEventsUrl,
    String? type,
    @JsonKey(name: 'user_view_type') String? userViewType,
    @JsonKey(name: 'site_admin') bool? siteAdmin,
  });
}

/// @nodoc
class __$$AuthorImplCopyWithImpl<$Res>
    extends _$AuthorCopyWithImpl<$Res, _$AuthorImpl>
    implements _$$AuthorImplCopyWith<$Res> {
  __$$AuthorImplCopyWithImpl(
    _$AuthorImpl _value,
    $Res Function(_$AuthorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = freezed,
    Object? id = freezed,
    Object? nodeId = freezed,
    Object? avatarUrl = freezed,
    Object? gravatarId = freezed,
    Object? url = freezed,
    Object? htmlUrl = freezed,
    Object? followersUrl = freezed,
    Object? followingUrl = freezed,
    Object? gistsUrl = freezed,
    Object? starredUrl = freezed,
    Object? subscriptionsUrl = freezed,
    Object? organizationsUrl = freezed,
    Object? reposUrl = freezed,
    Object? eventsUrl = freezed,
    Object? receivedEventsUrl = freezed,
    Object? type = freezed,
    Object? userViewType = freezed,
    Object? siteAdmin = freezed,
  }) {
    return _then(
      _$AuthorImpl(
        login:
            freezed == login
                ? _value.login
                : login // ignore: cast_nullable_to_non_nullable
                    as String?,
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        nodeId:
            freezed == nodeId
                ? _value.nodeId
                : nodeId // ignore: cast_nullable_to_non_nullable
                    as String?,
        avatarUrl:
            freezed == avatarUrl
                ? _value.avatarUrl
                : avatarUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        gravatarId:
            freezed == gravatarId
                ? _value.gravatarId
                : gravatarId // ignore: cast_nullable_to_non_nullable
                    as String?,
        url:
            freezed == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String?,
        htmlUrl:
            freezed == htmlUrl
                ? _value.htmlUrl
                : htmlUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        followersUrl:
            freezed == followersUrl
                ? _value.followersUrl
                : followersUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        followingUrl:
            freezed == followingUrl
                ? _value.followingUrl
                : followingUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        gistsUrl:
            freezed == gistsUrl
                ? _value.gistsUrl
                : gistsUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        starredUrl:
            freezed == starredUrl
                ? _value.starredUrl
                : starredUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        subscriptionsUrl:
            freezed == subscriptionsUrl
                ? _value.subscriptionsUrl
                : subscriptionsUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        organizationsUrl:
            freezed == organizationsUrl
                ? _value.organizationsUrl
                : organizationsUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        reposUrl:
            freezed == reposUrl
                ? _value.reposUrl
                : reposUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        eventsUrl:
            freezed == eventsUrl
                ? _value.eventsUrl
                : eventsUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        receivedEventsUrl:
            freezed == receivedEventsUrl
                ? _value.receivedEventsUrl
                : receivedEventsUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        type:
            freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String?,
        userViewType:
            freezed == userViewType
                ? _value.userViewType
                : userViewType // ignore: cast_nullable_to_non_nullable
                    as String?,
        siteAdmin:
            freezed == siteAdmin
                ? _value.siteAdmin
                : siteAdmin // ignore: cast_nullable_to_non_nullable
                    as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthorImpl implements _Author {
  const _$AuthorImpl({
    this.login,
    this.id,
    @JsonKey(name: 'node_id') this.nodeId,
    @JsonKey(name: 'avatar_url') this.avatarUrl,
    @JsonKey(name: 'gravatar_id') this.gravatarId,
    this.url,
    @JsonKey(name: 'html_url') this.htmlUrl,
    @JsonKey(name: 'followers_url') this.followersUrl,
    @JsonKey(name: 'following_url') this.followingUrl,
    @JsonKey(name: 'gists_url') this.gistsUrl,
    @JsonKey(name: 'starred_url') this.starredUrl,
    @JsonKey(name: 'subscriptions_url') this.subscriptionsUrl,
    @JsonKey(name: 'organizations_url') this.organizationsUrl,
    @JsonKey(name: 'repos_url') this.reposUrl,
    @JsonKey(name: 'events_url') this.eventsUrl,
    @JsonKey(name: 'received_events_url') this.receivedEventsUrl,
    this.type,
    @JsonKey(name: 'user_view_type') this.userViewType,
    @JsonKey(name: 'site_admin') this.siteAdmin,
  });

  factory _$AuthorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthorImplFromJson(json);

  @override
  final String? login;
  @override
  final int? id;
  @override
  @JsonKey(name: 'node_id')
  final String? nodeId;
  @override
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;
  @override
  @JsonKey(name: 'gravatar_id')
  final String? gravatarId;
  @override
  final String? url;
  @override
  @JsonKey(name: 'html_url')
  final String? htmlUrl;
  @override
  @JsonKey(name: 'followers_url')
  final String? followersUrl;
  @override
  @JsonKey(name: 'following_url')
  final String? followingUrl;
  @override
  @JsonKey(name: 'gists_url')
  final String? gistsUrl;
  @override
  @JsonKey(name: 'starred_url')
  final String? starredUrl;
  @override
  @JsonKey(name: 'subscriptions_url')
  final String? subscriptionsUrl;
  @override
  @JsonKey(name: 'organizations_url')
  final String? organizationsUrl;
  @override
  @JsonKey(name: 'repos_url')
  final String? reposUrl;
  @override
  @JsonKey(name: 'events_url')
  final String? eventsUrl;
  @override
  @JsonKey(name: 'received_events_url')
  final String? receivedEventsUrl;
  @override
  final String? type;
  @override
  @JsonKey(name: 'user_view_type')
  final String? userViewType;
  @override
  @JsonKey(name: 'site_admin')
  final bool? siteAdmin;

  @override
  String toString() {
    return 'Author(login: $login, id: $id, nodeId: $nodeId, avatarUrl: $avatarUrl, gravatarId: $gravatarId, url: $url, htmlUrl: $htmlUrl, followersUrl: $followersUrl, followingUrl: $followingUrl, gistsUrl: $gistsUrl, starredUrl: $starredUrl, subscriptionsUrl: $subscriptionsUrl, organizationsUrl: $organizationsUrl, reposUrl: $reposUrl, eventsUrl: $eventsUrl, receivedEventsUrl: $receivedEventsUrl, type: $type, userViewType: $userViewType, siteAdmin: $siteAdmin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nodeId, nodeId) || other.nodeId == nodeId) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.gravatarId, gravatarId) ||
                other.gravatarId == gravatarId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.followersUrl, followersUrl) ||
                other.followersUrl == followersUrl) &&
            (identical(other.followingUrl, followingUrl) ||
                other.followingUrl == followingUrl) &&
            (identical(other.gistsUrl, gistsUrl) ||
                other.gistsUrl == gistsUrl) &&
            (identical(other.starredUrl, starredUrl) ||
                other.starredUrl == starredUrl) &&
            (identical(other.subscriptionsUrl, subscriptionsUrl) ||
                other.subscriptionsUrl == subscriptionsUrl) &&
            (identical(other.organizationsUrl, organizationsUrl) ||
                other.organizationsUrl == organizationsUrl) &&
            (identical(other.reposUrl, reposUrl) ||
                other.reposUrl == reposUrl) &&
            (identical(other.eventsUrl, eventsUrl) ||
                other.eventsUrl == eventsUrl) &&
            (identical(other.receivedEventsUrl, receivedEventsUrl) ||
                other.receivedEventsUrl == receivedEventsUrl) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.userViewType, userViewType) ||
                other.userViewType == userViewType) &&
            (identical(other.siteAdmin, siteAdmin) ||
                other.siteAdmin == siteAdmin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    login,
    id,
    nodeId,
    avatarUrl,
    gravatarId,
    url,
    htmlUrl,
    followersUrl,
    followingUrl,
    gistsUrl,
    starredUrl,
    subscriptionsUrl,
    organizationsUrl,
    reposUrl,
    eventsUrl,
    receivedEventsUrl,
    type,
    userViewType,
    siteAdmin,
  ]);

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorImplCopyWith<_$AuthorImpl> get copyWith =>
      __$$AuthorImplCopyWithImpl<_$AuthorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorImplToJson(this);
  }
}

abstract class _Author implements Author {
  const factory _Author({
    final String? login,
    final int? id,
    @JsonKey(name: 'node_id') final String? nodeId,
    @JsonKey(name: 'avatar_url') final String? avatarUrl,
    @JsonKey(name: 'gravatar_id') final String? gravatarId,
    final String? url,
    @JsonKey(name: 'html_url') final String? htmlUrl,
    @JsonKey(name: 'followers_url') final String? followersUrl,
    @JsonKey(name: 'following_url') final String? followingUrl,
    @JsonKey(name: 'gists_url') final String? gistsUrl,
    @JsonKey(name: 'starred_url') final String? starredUrl,
    @JsonKey(name: 'subscriptions_url') final String? subscriptionsUrl,
    @JsonKey(name: 'organizations_url') final String? organizationsUrl,
    @JsonKey(name: 'repos_url') final String? reposUrl,
    @JsonKey(name: 'events_url') final String? eventsUrl,
    @JsonKey(name: 'received_events_url') final String? receivedEventsUrl,
    final String? type,
    @JsonKey(name: 'user_view_type') final String? userViewType,
    @JsonKey(name: 'site_admin') final bool? siteAdmin,
  }) = _$AuthorImpl;

  factory _Author.fromJson(Map<String, dynamic> json) = _$AuthorImpl.fromJson;

  @override
  String? get login;
  @override
  int? get id;
  @override
  @JsonKey(name: 'node_id')
  String? get nodeId;
  @override
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl;
  @override
  @JsonKey(name: 'gravatar_id')
  String? get gravatarId;
  @override
  String? get url;
  @override
  @JsonKey(name: 'html_url')
  String? get htmlUrl;
  @override
  @JsonKey(name: 'followers_url')
  String? get followersUrl;
  @override
  @JsonKey(name: 'following_url')
  String? get followingUrl;
  @override
  @JsonKey(name: 'gists_url')
  String? get gistsUrl;
  @override
  @JsonKey(name: 'starred_url')
  String? get starredUrl;
  @override
  @JsonKey(name: 'subscriptions_url')
  String? get subscriptionsUrl;
  @override
  @JsonKey(name: 'organizations_url')
  String? get organizationsUrl;
  @override
  @JsonKey(name: 'repos_url')
  String? get reposUrl;
  @override
  @JsonKey(name: 'events_url')
  String? get eventsUrl;
  @override
  @JsonKey(name: 'received_events_url')
  String? get receivedEventsUrl;
  @override
  String? get type;
  @override
  @JsonKey(name: 'user_view_type')
  String? get userViewType;
  @override
  @JsonKey(name: 'site_admin')
  bool? get siteAdmin;

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthorImplCopyWith<_$AuthorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
