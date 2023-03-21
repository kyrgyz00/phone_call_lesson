import 'package:flutter/material.dart';
import 'package:flutter_lesson3/features/employe/presentation/screens/employee_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(360, 812),
      builder: (context, child) => MaterialApp(home: child),
      child: const EmployeeScreen(),
    );
  }
}
