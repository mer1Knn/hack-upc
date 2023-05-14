import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'salah/core/preferences/app_preferences.dart';
import 'salah/data/data_source/local_data_source.dart';
//import 'salah/data/data_source/remote_data_sourcece.dart';
import 'salah/data/data_source/remote_data_source.dart';
import 'salah/data/network/app_api.dart';
import 'salah/data/network/dio_factory.dart';
import 'salah/data/network/network_info.dart';
import 'salah/data/repository/repository_impl.dart';
import 'salah/domain/repository/repository.dart';
import 'salah/domain/usecases/login_usecase.dart';
import 'salah/domain/usecases/register_usecase.dart';


final instance = GetIt.instance;

Future initDI() async {
  final sharedPrefs = await SharedPreferences.getInstance();

  instance.registerLazySingleton<SharedPreferences>(() => sharedPrefs);
  instance
      .registerLazySingleton<AppPreferences>(() => AppPreferences(instance()));
  instance.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(InternetConnectionChecker()));
  instance.registerLazySingleton<DioFactory>(() => DioFactory(instance<AppPreferences>()));

  await initDio();

  // APIs

  instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(instance<Dio>()));


  // auth
  instance.registerLazySingleton<RemoteDataSource>(
          () => RemoteDataSourceImpl(instance<AppServiceClient>()));
  instance.registerLazySingleton<LocalDataSource>(
          () => LocalDataSourceImpl());
  instance.registerLazySingleton<Repository>(
          () => RepositoryImpl(instance(), instance(), instance()));
  instance.registerLazySingleton<LoginUseCase>(
          () => LoginUseCase(instance<Repository>()));
  instance.registerLazySingleton<RegisterUseCase>(
          () => RegisterUseCase(instance<Repository>()));


}


Future initDio() async {
  Dio dio = await instance<DioFactory>().getDio();

  instance.registerLazySingleton<Dio>(() => dio);
}

Future refreshDio()async{
  await instance.unregister(instance: instance<Dio>());
  await initDio();
}