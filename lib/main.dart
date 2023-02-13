import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

import 'package:evivi/app/bindings/home_binding.dart';
import 'package:evivi/app/bindings/login_binding.dart';
import 'package:evivi/app/bindings/settings_binding.dart';
import 'package:evivi/app/bindings/signup_binding.dart';
import 'package:evivi/app/bindings/welcome_binding.dart';
import 'package:evivi/app/routes/route.dart';
import 'package:evivi/app/ui/pages/home_page/home_page.dart';
import 'package:evivi/app/ui/pages/login_page/login_page.dart';
import 'package:evivi/app/ui/pages/settings_page/settings_page.dart';
import 'package:evivi/app/ui/pages/signup_page/signup_page.dart';
import 'package:evivi/app/ui/pages/welcome_page/welcome_page.dart';
import 'package:evivi/app/ui/utils/colors.dart';

void main() {
  Animate.restartOnHotReload = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'EVIVI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,

        useMaterial3: true,
        fontFamily: "Poppins",
        appBarTheme: const AppBarTheme(
          elevation: 0,
        ),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: generateMaterialColor(mainColor),
        ).copyWith(primary: mainColor),
        //set default text color to fontColor
       textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontFamily: "Poppins"),
          ),
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: fontColor),
          bodyMedium: TextStyle(color: fontColor),
        ),
      ),
      initialRoute: Routes.welcome,
      getPages: [
        GetPage(
          name: Routes.home,
          page: () => const HomePage(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: Routes.welcome,
          page: () => const WelcomePage(),
          binding: WelcomeBinding(),
        ),
        GetPage(
          name: Routes.settings,
          page: () => const SettingsPage(),
          binding: SettingsBinding(),
        ),
        GetPage(
          name: Routes.login,
          page: () => const LoginPage(),
          binding: LoginBinding(),
        ),
        GetPage(
          name: Routes.signup,
          page: () => const SignupPage(),
          binding: SignupBinding(),
        ),
      ],
    );
  }
}
