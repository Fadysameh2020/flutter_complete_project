import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/routing/routes.dart';
import 'package:flutter_complete_project/features/authentication/login/domain/login_cubit.dart';
import 'package:flutter_complete_project/features/authentication/login/presentation/login_screen.dart';
import 'package:flutter_complete_project/features/authentication/signup/domain/sign_up_cubit.dart';
import 'package:flutter_complete_project/features/authentication/signup/presentation/signup_screen.dart';
import 'package:flutter_complete_project/features/home/domain/home_cubit.dart';
import 'package:flutter_complete_project/features/home/presentation/home_screen.dart';
import 'package:flutter_complete_project/features/onboarding/presentation/onboarding_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => sl<LoginCubit>(),
                child: const LoginScreen(),
              ),
        );
      case Routes.signupScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => sl<SignupCubit>(),
                child: const SignupScreen(),
              ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => HomeCubit(sl())..getSpecializations(),
                child: const HomeScreen(),
              ),
        );
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
