import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/di/dependency_injection.dart';
import 'package:flutter_complete_project/core/routing/app_router.dart';
import 'package:flutter_complete_project/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  /*   await checkIfLoggedInUser();
 */
  runApp(DevicePreview(builder: (context) => DocApp(appRouter: AppRouter())));
}
