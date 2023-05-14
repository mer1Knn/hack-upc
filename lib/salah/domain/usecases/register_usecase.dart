



import 'package:dartz/dartz.dart';
import 'package:iwd23/salah/data/requests/requests.dart';

import '../../core/base/base_usecase.dart';
import '../../data/network/failure.dart';
import '../models/models.dart';
import '../repository/repository.dart';

class RegisterUseCase implements BaseUseCase<RegisterUseCaseInput, RegisterModel> {
  final Repository _repository;

  RegisterUseCase(this._repository);

  @override
  Future<Either<Failure, RegisterModel>> execute(RegisterUseCaseInput input) async{
    return await _repository.register(RegisterRequest(input.email, input.password, input.fullName));
  }

}

class RegisterUseCaseInput {
String email;
 String password;
 String fullName;

  RegisterUseCaseInput(this.email, this.password, this.fullName);
}
        