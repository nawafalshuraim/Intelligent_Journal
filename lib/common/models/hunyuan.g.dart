// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hunyuan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PublicHeaderImpl _$$PublicHeaderImplFromJson(Map<String, dynamic> json) =>
    _$PublicHeaderImpl(
      action: json['X-TC-Action'] as String?,
      timestamp: (json['X-TC-Timestamp'] as num?)?.toInt(),
      version: json['X-TC-Version'] as String?,
      authorization: json['Authorization'] as String?,
    );

Map<String, dynamic> _$$PublicHeaderImplToJson(_$PublicHeaderImpl instance) =>
    <String, dynamic>{
      if (instance.action case final value?) 'X-TC-Action': value,
      if (instance.timestamp case final value?) 'X-TC-Timestamp': value,
      if (instance.version case final value?) 'X-TC-Version': value,
      if (instance.authorization case final value?) 'Authorization': value,
    };

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      role: json['Role'] as String,
      content: json['Content'] as String,
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{'Role': instance.role, 'Content': instance.content};

_$HunyuanResponseImpl _$$HunyuanResponseImplFromJson(
  Map<String, dynamic> json,
) => _$HunyuanResponseImpl(
  note: json['Note'] as String?,
  choices:
      (json['Choices'] as List<dynamic>?)
          ?.map((e) => Choices.fromJson(e as Map<String, dynamic>))
          .toList(),
  created: (json['Created'] as num?)?.toInt(),
  id: json['Id'] as String?,
  usage:
      json['Usage'] == null
          ? null
          : Usage.fromJson(json['Usage'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$HunyuanResponseImplToJson(
  _$HunyuanResponseImpl instance,
) => <String, dynamic>{
  if (instance.note case final value?) 'Note': value,
  if (instance.choices case final value?) 'Choices': value,
  if (instance.created case final value?) 'Created': value,
  if (instance.id case final value?) 'Id': value,
  if (instance.usage case final value?) 'Usage': value,
};

_$UsageImpl _$$UsageImplFromJson(Map<String, dynamic> json) => _$UsageImpl(
  promptTokens: (json['PromptTokens'] as num?)?.toInt(),
  completionTokens: (json['CompletionTokens'] as num?)?.toInt(),
  totalTokens: (json['TotalTokens'] as num?)?.toInt(),
);

Map<String, dynamic> _$$UsageImplToJson(
  _$UsageImpl instance,
) => <String, dynamic>{
  if (instance.promptTokens case final value?) 'PromptTokens': value,
  if (instance.completionTokens case final value?) 'CompletionTokens': value,
  if (instance.totalTokens case final value?) 'TotalTokens': value,
};

_$ChoicesImpl _$$ChoicesImplFromJson(Map<String, dynamic> json) =>
    _$ChoicesImpl(
      finishReason: json['FinishReason'] as String?,
      delta:
          json['Delta'] == null
              ? null
              : Delta.fromJson(json['Delta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChoicesImplToJson(_$ChoicesImpl instance) =>
    <String, dynamic>{
      if (instance.finishReason case final value?) 'FinishReason': value,
      if (instance.delta case final value?) 'Delta': value,
    };

_$DeltaImpl _$$DeltaImplFromJson(Map<String, dynamic> json) => _$DeltaImpl(
  role: json['Role'] as String?,
  content: json['Content'] as String?,
);

Map<String, dynamic> _$$DeltaImplToJson(_$DeltaImpl instance) =>
    <String, dynamic>{
      if (instance.role case final value?) 'Role': value,
      if (instance.content case final value?) 'Content': value,
    };
