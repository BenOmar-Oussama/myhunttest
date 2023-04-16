import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

@override
  Widget build(BuildContext context) {
    // In first method you only need to wrap [MaterialApp] with [ScreenUtilInit] and that's it
    return ScreenUtilInit(
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Test',
          theme: ThemeData(
          ),
          home: child,
        );
      },
      child: HomePage(),
    );
  }
}