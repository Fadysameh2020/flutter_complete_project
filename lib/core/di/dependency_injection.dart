import 'package:dio/dio.dart';
import 'package:flutter_complete_project/core/networking/api_service.dart';
import 'package:flutter_complete_project/core/networking/dio_factory.dart';
import 'package:flutter_complete_project/features/authentication/data/repos/login_repo.dart';
import 'package:flutter_complete_project/features/authentication/domain/login_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();
  sl.registerLazySingleton<ApiService>(() => ApiService(dio));

  ///login
  sl.registerLazySingleton<LoginRepo>(() => LoginRepo(sl()));
  sl.registerFactory<LoginCubit>(() => LoginCubit(sl()));

  /*
  ///authentication
  sl.registerLazySingleton<AuthApiServices>(() => AuthApiServices(dio));

  ///signUp
  sl.registerLazySingleton<SignUpRepo>(() => SignUpRepo(sl()));
  sl.registerFactory<SignupCubit>(() => SignupCubit(sl()));

  //home screen
  sl.registerLazySingleton<HomeApiServices>(()=> HomeApiServices(dio));
  sl.registerLazySingleton<HomeRepo>(()=> HomeRepo(sl())); */
}
