



import 'package:dartz/dartz.dart';

import '../../core/base/base_usecase.dart';
import '../../data/network/failure.dart';
import '../models/models.dart';
import '../repository/repository.dart';

class ExampleUseCase implements BaseUseCase<ExampleUseCaseInput, ExampleModel> {
  final Repository _repository;

  ExampleUseCase(this._repository);

  @override
  Future<Either<Failure, ExampleModel>> execute(ExampleUseCaseInput input) {
    // TODO: implement execute
    throw UnimplementedError();
  }

  

}

class ExampleUseCaseInput {
  ExampleUseCaseInput();
}

