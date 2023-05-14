



import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../constants.dart';
import '../responses/responses.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

 
 @POST("/auth") 
  Future<LoginResponse> login( 
@Field('email') String email, 
@Field('password') String password
  ); 
  
 @POST("/users") 
  Future<RegisterResponse> register( 
@Field('email') String email, 
@Field('password') String password, 
@Field('fullName') String fullName
  ); 
 }