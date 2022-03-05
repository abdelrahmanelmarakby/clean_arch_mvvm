import 'package:clean_arch_mvvm/presentation/forget_password/ChangePasswordPage.dart';
import 'package:clean_arch_mvvm/presentation/home/HomePage.dart';
import 'package:clean_arch_mvvm/presentation/login/LoginPage.dart';
import 'package:clean_arch_mvvm/presentation/onboarding/OnBoardingPage.dart';
import 'package:clean_arch_mvvm/presentation/register/RegisterPage.dart';
import 'package:clean_arch_mvvm/presentation/resourses/strings_manager.dart';
import 'package:clean_arch_mvvm/presentation/splash/SplashPage.dart';
import 'package:clean_arch_mvvm/presentation/store_details/StoreDetailsPage.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splash = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String changePassword = '/changePassword';
  static const String home = '/home';
  static const String storeDetails = '/storeDetails';
  static const String onBoarding = '/onBoarding';
}

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => HomePage());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case Routes.register:
        return MaterialPageRoute(builder: (_) => RegisterPage());
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => SplashPage());
      case Routes.changePassword:
        return MaterialPageRoute(builder: (_) => ChangePasswordPage());

      case Routes.storeDetails:
        return MaterialPageRoute(builder: (_) => StoreDetailsPage());
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => OnBoardingPage());
      default:
        return MaterialPageRoute(builder: (_) => const Error404Page());
    }
  }
}

class Error404Page extends StatelessWidget {
  const Error404Page({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(AppStrings.error404),
      ),
    );
  }
}
