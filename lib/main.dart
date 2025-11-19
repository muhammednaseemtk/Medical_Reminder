import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:medical_reminder/core/route/app_route.dart';
import 'package:medical_reminder/presentation/Notification/view/notification_screen.dart';
import 'package:medical_reminder/presentation/appointment/view/appointment_screen.dart';
import 'package:medical_reminder/presentation/bmi/view/bmi_screen.dart';
import 'package:medical_reminder/presentation/home/view/home_screen.dart';
import 'package:medical_reminder/presentation/auth/login/view/login_screen.dart';
import 'package:medical_reminder/presentation/auth/sign_up/view/sign_up_screen.dart';
import 'package:medical_reminder/presentation/home/widget/main_page.dart';
import 'package:medical_reminder/presentation/medicine%20report/view/medicine_report_screen.dart';
import 'package:medical_reminder/presentation/report/view/report_screen.dart';
import 'package:medical_reminder/presentation/setting/view/setting_screen.dart';
import 'package:medical_reminder/presentation/splash/view/splash_screen.dart';
import 'package:medical_reminder/presentation/statistics/view/statistics_screen.dart';

void main() async {
  runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.mainPage,

      routes: {
        AppRoute.splash: (context) => const SplashScreen(),
        AppRoute.login: (context) => LoginScreen(),
        AppRoute.signUp: (context) => SignUpScreen(),
        AppRoute.home: (context) => HomeScreen(),
        AppRoute.report: (context) => ReportScreen(),
        AppRoute.appointment: (context) => AppointmentScreen(),
        AppRoute.medicineReport: (context) => MedicineReportScreen(),
        AppRoute.bmi: (context) => BmiScreen(),
        AppRoute.notification: (context) => NotificationScreen(),
        AppRoute.statistics: (context) => StatisticsScreen(),
        AppRoute.setting: (context) => SettingScreen(),
        AppRoute.mainPage: (context) => MainPage()
      },
    );
  }
}