import 'package:app_delivery_ui/theme_and_state_management/presentation/splash/splash_screen.dart';
import 'package:app_delivery_ui/theme_and_state_management/presentation/theme.dart';
import 'package:flutter/material.dart';

class MainThemingAndStateManagementApp extends StatelessWidget {
  const MainThemingAndStateManagementApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Fanny Mi Amor',
      theme: DeliveryColors.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}