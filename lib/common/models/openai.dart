class OpenAIMessage {
  final String role;
  final String content;

  const OpenAIMessage({required this.role, required this.content});

  Map<String, dynamic> toJson() => {'role': role, 'content': content};

  OpenAIMessage copyWith({String? role, String? content}) {
    return OpenAIMessage(
      role: role ?? this.role,
      content: content ?? this.content,
    );
  }
}

class OpenAIStreamResponse {
  final List<OpenAIStreamChoice>? choices;

  OpenAIStreamResponse({this.choices});

  factory OpenAIStreamResponse.fromJson(Map<String, dynamic> json) {
    return OpenAIStreamResponse(
      choices:
          (json['choices'] as List?)
              ?.map((c) => OpenAIStreamChoice.fromJson(c as Map<String, dynamic>))
              .toList(),
    );
  }
}

class OpenAIStreamChoice {
  final OpenAIStreamDelta? delta;
  final String? finishReason;

  OpenAIStreamChoice({this.delta, this.finishReason});

  factory OpenAIStreamChoice.fromJson(Map<String, dynamic> json) {
    return OpenAIStreamChoice(
      delta:
          json['delta'] != null
              ? OpenAIStreamDelta.fromJson(json['delta'] as Map<String, dynamic>)
              : null,
      finishReason: json['finish_reason'] as String?,
    );
  }
}

class OpenAIStreamDelta {
  final String? role;
  final String? content;

  OpenAIStreamDelta({this.role, this.content});

  factory OpenAIStreamDelta.fromJson(Map<String, dynamic> json) {
    return OpenAIStreamDelta(
      role: json['role'] as String?,
      content: json['content'] as String?,
    );
  }
}
