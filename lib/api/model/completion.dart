import 'package:json_annotation/json_annotation.dart';

// dart run build_runner watch -d
part 'completion.g.dart';

@JsonSerializable()
class CompletionRequest {
  @JsonKey(name: 'model')
  final String model;
  @JsonKey(name: 'message')
  final List<Map<String, dynamic>> message;

  const CompletionRequest(
    this.model,
    this.message,
  );

  factory CompletionRequest.fromJson(Map<String, dynamic> json) =>
      _$CompletionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CompletionRequestToJson(this);
}

@JsonSerializable()
class CompletionResponse {
  final String id;
  final int created;
  final String model;

  const CompletionResponse(
    this.id,
    this.created,
    this.model,
  );

  factory CompletionResponse.fromJson(Map<String, dynamic> json) =>
      _$CompletionResponseFromJson(json);
}

@JsonSerializable()
class ChoiceModel {
  @JsonKey(name: 'message')
  final MessageModel message;
  @JsonKey(name: 'index')
  final int index;

  const ChoiceModel(
    this.message,
    this.index,
  );

  factory ChoiceModel.fromJson(Map<String, dynamic> json) =>
      _$ChoiceModelFromJson(json);
}

@JsonSerializable()
class MessageModel {
  @JsonKey(name: 'role')
  final String role;
  @JsonKey(name: 'content')
  final String content;

  const MessageModel(
    this.role,
    this.content,
  );

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);

  Map<String, dynamic> toJson() => _$MessageModelToJson(this);
}
