



import 'package:dartz/dartz.dart';

import '../../domain/models/models.dart';
import '../../data/mapper/mapper.dart';
import '../data_source/local_data_source.dart';
import '../data_source/remote_data_source.dart';
import '../network/error_handler.dart';
import '../network/failure.dart';
import '../network/network_info.dart';
import '../../domain/repository/repository.dart';
import '../requests/requests.dart';

class RepositoryImpl implements Repository {
  final RemoteDataSource _remoteDataSource;
  final LocalDataSource _localDataSource;
  final NetworkInfo _networkInfo;

  RepositoryImpl(this._remoteDataSource, this._networkInfo,
      this._localDataSource);
 
 @override
  
   Future<Either<Failure,LoginModel>> login(LoginRequest loginRequest)async{
       if (await _networkInfo.isConnected) {
      try {
        final response = await _remoteDataSource.login(loginRequest);

         // todo handle the response 
        return Right(response.toDomain());

      } catch (error) {
        rethrow;
        return Left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
   } 
  
 @override
  
   Future<Either<Failure,RegisterModel>> register(RegisterRequest registerRequest)async{
       if (await _networkInfo.isConnected) {
      try {
        final response = await _remoteDataSource.register(registerRequest);

         // todo handle the response 
        return Right(response.toDomain());

      } catch (error) {
         return Left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.NO_INTERNET_CONNECTION.getFailure());
    }
   } 
 }