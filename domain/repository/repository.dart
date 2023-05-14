



import 'package:dartz/dartz.dart';

import '../../data/network/failure.dart';
import '../../data/requests/requests.dart';
import '../models/models.dart';

abstract class Repository {
 
 Future<Either<Failure,LoginModel>> login(LoginRequest loginRequest); 
  
 Future<Either<Failure,RegisterModel>> register(RegisterRequest registerRequest); 
 }