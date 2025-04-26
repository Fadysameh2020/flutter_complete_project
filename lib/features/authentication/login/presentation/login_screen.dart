import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/shared_widgets/custom_elevated_button.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_complete_project/features/authentication/login/data/models/login_request_body.dart';
import 'package:flutter_complete_project/features/authentication/login/domain/login_cubit.dart';
import 'package:flutter_complete_project/features/authentication/login/presentation/widgets/dont_have_account_text_widget.dart';
import 'package:flutter_complete_project/features/authentication/login/presentation/widgets/email_and_password.dart';
import 'package:flutter_complete_project/features/authentication/login/presentation/widgets/login_bloc_listener.dart';
import 'package:flutter_complete_project/features/authentication/login/presentation/widgets/terms_and_conditions_text_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Login Screen')),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: TextStyles.font24BlueBold),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const EmailAndPassword(),
                    verticalSpace(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forgot password?',
                        style: TextStyles.font13BlueRegular,
                      ),
                    ),
                    verticalSpace(24),
                    CustomElevatedButton(
                      buttonText: 'Login',
                      onPressed: () {
                        validatehenDoLogin(context);
                      },
                    ),
                    verticalSpace(16),
                    const TermsAndConditionsText(),
                    verticalSpace(40),
                    const AlreadyHaveAccountText(),
                    const LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validatehenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
        LoginRequestBody(
          email: context.read<LoginCubit>().emailController.text,
          password: context.read<LoginCubit>().passwordController.text,
        ),
      );
    }
  }
}
