
import 'package:json_annotation/json_annotation.dart';

part 'failure.g.dart';




@JsonSerializable()
class Failure{
  int? code;
  String? message;
  Failure(this.code, this.message);

  factory Failure.fromJson(Map<String,dynamic> json)=> _$FailureFromJson(json);
  Map<String,dynamic> toJson()=>_$FailureToJson(this);

}