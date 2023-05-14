



import 'package:dartz/dartz.dart';


import '../../core/base/base_usecase.dart';
import '../../data/network/failure.dart';
import '../../data/requests/requests.dart';
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
        