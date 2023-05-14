




import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../data/network/failure.dart';



abstract class BaseUseCase<In, Out> {
  Future<Either<Failure, Out>> execute(In input);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
