import 'package:json_annotation/json_annotation.dart';

part 'api_general_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class ApiGeneralResponse<T> {
  final String? message;
  final T? data;
  final bool? status;
  final int? code;

  ApiGeneralResponse({
    this.message,
    this.data,
    this.status,
    this.code,
  });

  factory ApiGeneralResponse.fromJson(
      Map<String, dynamic> json,
      T Function(Object? json) fromJsonT,
      ) =>
      _$ApiGeneralResponseFromJson(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$ApiGeneralResponseToJson(this, toJsonT);
}
