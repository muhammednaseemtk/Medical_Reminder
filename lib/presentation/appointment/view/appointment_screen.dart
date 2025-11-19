import 'package:flutter/material.dart';
import 'package:medical_reminder/core/theme/app_colors.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.icon1,
        title: Text('Appointment',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
    );
  }
}