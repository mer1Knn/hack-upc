



import '../../domain/models/models.dart';
import '../network/failure.dart';
import '../responses/responses.dart';
import '../../core/extensions/extensions.dart';


  extension LoginResponseMapper on LoginResponse {

  LoginModel toDomain() {

      return LoginModel(
    data!.token.orEmpty, data!.details
    );
    
  }
}
   

  extension RegisterResponseMapper on RegisterResponse {

  RegisterModel toDomain() {

      return RegisterModel();
    
  }
}
   