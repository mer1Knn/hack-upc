



import 'package:dartz/dartz.dart';
//import 'package:iwd23/salah/data/requests/requests.dart';

import '../../core/base/base_usecase.dart';
import '../../data/network/failure.dart';
import '../../data/requests/requests.dart';
import '../models/models.dart';
import '../repository/repository.dart';

class LoginUseCase implements BaseUseCase<LoginUseCaseInput, LoginModel> {
  final Repository _repository;

  LoginUseCase(this._repository);

  @override
  Future<Either<Failure, LoginModel>> execute(LoginUseCaseInput input) async{
    return await _repository.login(LoginRequest(input.email, input.password));
  }

}

class LoginUseCaseInput {
String email;
 String password;

  LoginUseCaseInput(this.email, this.password);
}
        