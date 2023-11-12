import 'package:flutter/material.dart';
import 'package:lab10/routes/app_routes.dart';
import 'package:lab10/themes/app_themes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      // onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.myTheme,
    );
  }
}
