import 'package:dio/dio.dart';
import 'package:flutter_complete_project/core/networking/api_service.dart';
import 'package:flutter_complete_project/core/networking/dio_factory.dart';
import 'package:flutter_complete_project/features/authentication/login/data/repos/login_repo.dart';
import 'package:flutter_complete_project/features/authentication/login/domain/login_cubit.dart';
import 'package:flutter_complete_project/features/authentication/signup/data/repos/signup_repo.dart';
import 'package:flutter_complete_project/features/authentication/signup/domain/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();
  sl.registerLazySingleton<ApiService>(() => ApiService(dio));

  ///login
  sl.registerLazySingleton<LoginRepo>(() => LoginRepo(sl()));
  sl.registerFactory<LoginCubit>(() => LoginCubit(sl()));

  ///signUp
  sl.registerLazySingleton<SignupRepo>(() => SignupRepo(sl()));
  sl.registerFactory<SignupCubit>(() => SignupCubit(sl()));

  /*
  ///authentication
  sl.registerLazySingleton<AuthApiServices>(() => AuthApiServices(dio));

  //home screen
  sl.registerLazySingleton<HomeApiServices>(()=> HomeApiServices(dio));
  sl.registerLazySingleton<HomeRepo>(()=> HomeRepo(sl())); */
}
