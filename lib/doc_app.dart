import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/routing/app_router.dart';
import 'package:flutter_complete_project/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/routes.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;

  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(375, 812),
      child: MaterialApp(
        locale: const Locale('en'),
        title: 'Doc App',
        // localizationsDelegates: const [
        //   S.delegate,
        //   GlobalMaterialLocalizations.delegate,
        //   GlobalWidgetsLocalizations.delegate,
        //   GlobalCupertinoLocalizations.delegate,
        // ],
        // supportedLocales: S.delegate.supportedLocales,
        theme: ThemeData(
            primaryColor: ColorsManager.mainColor,
            scaffoldBackgroundColor: ColorsManager.backGroundColor,
            colorScheme: ColorScheme.fromSeed(
              seedColor:  ColorsManager.mainColor,
              primary:  ColorsManager.mainColor,
            )
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generateRoute,
        // initialRoute: isLoggedInUser ? Routes.home : Routes.loginScreen,
        // initialRoute: Routes.layoutScreen,
        initialRoute: Routes.onBoardingScreen,
      ),
    );
  }
}
