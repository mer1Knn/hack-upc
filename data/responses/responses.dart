



import 'package:json_annotation/json_annotation.dart';

import '../../domain/models/models.dart';
part 'responses.g.dart';


@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  @JsonKey(name: "message")
  String? message;
  @JsonKey(name: "data")
  T? data;
}

  @JsonSerializable()
class ExampleResponse{   
ExampleResponse();
  factory ExampleResponse.fromJson(Map<String,dynamic> json)=>_$ExampleResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ExampleResponseToJson(this);
  
 }

  @JsonSerializable()
   class LoginResponseData {
   String? token;
   DetailsModel? details;
   
   LoginResponseData(this.token, this.details);
   
   
  factory LoginResponseData.fromJson(Map<String,dynamic> json)=>_$LoginResponseDataFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponseDataToJson(this);
  
   }
   
 
     @JsonSerializable()
   class LoginResponse extends BaseResponse<LoginResponseData > {
   LoginResponse();
   
   
  factory LoginResponse.fromJson(Map<String,dynamic> json)=>_$LoginResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
  
   }
     @JsonSerializable()
   class RegisterResponseData {
   
   
   RegisterResponseData();
   
   
  factory RegisterResponseData.fromJson(Map<String,dynamic> json)=>_$RegisterResponseDataFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterResponseDataToJson(this);
  
   }
   
 
     @JsonSerializable()
   class RegisterResponse extends BaseResponse<RegisterResponseData > {
   RegisterResponse();
   
   
  factory RegisterResponse.fromJson(Map<String,dynamic> json)=>_$RegisterResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterResponseToJson(this);
  
   }
   