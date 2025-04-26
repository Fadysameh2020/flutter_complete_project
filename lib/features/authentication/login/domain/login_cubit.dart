import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/features/authentication/login/data/models/login_request_body.dart';
import 'package:flutter_complete_project/features/authentication/login/data/repos/login_repo.dart';
import 'package:flutter_complete_project/features/authentication/login/domain/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  final formKey = GlobalKey<FormState>();
  late TextEditingController emailController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();

  emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(loginRequestBody);
    response.when(
      success: (data) => emit(LoginState.success(data)),
      failure:
          (error) => emit(
            LoginState.failure(message: error.apiErrorModel.message ?? ''),
          ),
    );
  }
}
