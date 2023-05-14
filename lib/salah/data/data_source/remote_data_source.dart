



import '../network/app_api.dart';
import '../requests/requests.dart';
import '../responses/responses.dart';

abstract class RemoteDataSource {
 
      Future<LoginResponse> login(LoginRequest loginRequest);
   
  
      Future<RegisterResponse> register(RegisterRequest registerRequest);
   
 } 
  
 

class RemoteDataSourceImpl implements RemoteDataSource {  
  final AppServiceClient _appServiceClient;
  RemoteDataSourceImpl(this._appServiceClient);
  
 
 @override
   Future<LoginResponse> login(LoginRequest loginRequest)async{
           return await _appServiceClient.login(
   loginRequest.email, loginRequest.password
    );
   } 
  
 @override
   Future<RegisterResponse> register(RegisterRequest registerRequest)async{
           return await _appServiceClient.register(
   registerRequest.email, registerRequest.password, registerRequest.fullName
    );
   } 
 }