// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompletionRequest _$CompletionRequestFromJson(Map<String, dynamic> json) =>
    CompletionRequest(
      json['model'] as String,
      (json['message'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$CompletionRequestToJson(CompletionRequest instance) =>
    <String, dynamic>{
      'model': instance.model,
      'message': instance.message,
    };

CompletionResponse _$CompletionResponseFromJson(Map<String, dynamic> json) =>
    CompletionResponse(
      json['id'] as String,
      json['created'] as int,
      json['model'] as String,
    );

Map<String, dynamic> _$CompletionResponseToJson(CompletionResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created,
      'model': instance.model,
    };

ChoiceModel _$ChoiceModelFromJson(Map<String, dynamic> json) => ChoiceModel(
      MessageModel.fromJson(json['message'] as Map<String, dynamic>),
      json['index'] as int,
    );

Map<String, dynamic> _$ChoiceModelToJson(ChoiceModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'index': instance.index,
    };

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) => MessageModel(
      json['role'] as String,
      json['content'] as String,
    );

Map<String, dynamic> _$MessageModelToJson(MessageModel instance) =>
    <String, dynamic>{
      'role': instance.role,
      'content': instance.content,
    };
