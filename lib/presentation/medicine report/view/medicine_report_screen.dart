import 'package:flutter/material.dart';
import 'package:medical_reminder/core/theme/app_colors.dart';

class MedicineReportScreen extends StatefulWidget {
  const MedicineReportScreen({super.key});

  @override
  State<MedicineReportScreen> createState() => _MedicineReportScreenState();
}

class _MedicineReportScreenState extends State<MedicineReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.icon1,
        title: Text('Medicine Report',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
    );
  }
}