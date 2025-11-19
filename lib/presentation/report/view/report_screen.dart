import 'package:flutter/material.dart';
import 'package:medical_reminder/core/theme/app_colors.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.icon1,
        title: Text('Report',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
    );
  }
}