import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';


class ExampleModel {
  ExampleModel();
}

@JsonSerializable()
class DetailsModel {
  final String id, email, password, fullName;
  final DateTime createdAt, updatedAt;
  final int v;
  final List<String> following, followers;

  DetailsModel({
   required this.id,
   required this.email,
   required this.password,
   required this.fullName,
   required this.createdAt,
   required this.updatedAt,
   required this.v,
   required this.following,
   required this.followers,
  });


  factory DetailsModel.fromJson(Map<String,dynamic> json)=>_$DetailsModelFromJson(json);
  Map<String, dynamic> toJson() => _$DetailsModelToJson(this);
}
  
   class LoginModel {
   String token;
 DetailsModel? details;
   LoginModel(this.token, this.details);
   

   
   }
     
   class RegisterModel {
   
   RegisterModel();
   

   
   }
   