// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse<T> _$BaseResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    BaseResponse<T>()
      ..message = json['message'] as String?
      ..data = _$nullableGenericFromJson(json['data'], fromJsonT);

Map<String, dynamic> _$BaseResponseToJson<T>(
  BaseResponse<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'message': instance.message,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);

ExampleResponse _$ExampleResponseFromJson(Map<String, dynamic> json) =>
    ExampleResponse();

Map<String, dynamic> _$ExampleResponseToJson(ExampleResponse instance) =>
    <String, dynamic>{};

LoginResponseData _$LoginResponseDataFromJson(Map<String, dynamic> json) =>
    LoginResponseData(
      json['token'] as String?,
      json['details'] == null
          ? null
          : DetailsModel.fromJson(json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseDataToJson(LoginResponseData instance) =>
    <String, dynamic>{
      'token': instance.token,
      'details': instance.details,
    };

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse()
      ..message = json['message'] as String?
      ..data = json['data'] == null
          ? null
          : LoginResponseData.fromJson(json['data'] as Map<String, dynamic>);

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

RegisterResponseData _$RegisterResponseDataFromJson(
        Map<String, dynamic> json) =>
    RegisterResponseData();

Map<String, dynamic> _$RegisterResponseDataToJson(
        RegisterResponseData instance) =>
    <String, dynamic>{};

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) =>
    RegisterResponse()
      ..message = json['message'] as String?
      ..data = json['data'] == null
          ? null
          : RegisterResponseData.fromJson(json['data'] as Map<String, dynamic>);

Map<String, dynamic> _$RegisterResponseToJson(RegisterResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
