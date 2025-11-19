import 'package:flutter/material.dart';
import 'package:medical_reminder/core/constant/app_constant.dart';
import 'package:medical_reminder/core/route/app_route.dart';
import 'package:medical_reminder/core/theme/app_colors.dart';
import 'package:medical_reminder/presentation/Notification/view/notification_screen.dart';
import 'package:medical_reminder/presentation/home/widget/appointment_card.dart';
import 'package:medical_reminder/presentation/home/widget/bottom_nav_bar.dart';
import 'package:medical_reminder/presentation/home/widget/medicine_card.dart';
import 'package:medical_reminder/presentation/home/widget/menu_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Container(color: AppColors.shadow, height: 1),
        ),
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('asset/image/profile.png'),
              ),
            ),
            Text('Muhammed Naseem T K', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MenuCard(
                    image: 'asset/image/report.jpg',
                    text: 'Report',
                    onTap: () {
                      Navigator.pushNamed(context, AppRoute.report);
                    },
                  ),
                  MenuCard(
                    image: 'asset/image/appointment.png',
                    text: 'Appointment',
                    onTap: () {
                      Navigator.pushNamed(context, AppRoute.appointment);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MenuCard(
                    image: 'asset/image/medical_report.png',
                    text: 'Medicine report',
                    onTap: () {
                      Navigator.pushNamed(context, AppRoute.medicineReport);
                    },
                  ),
                  MenuCard(
                    image: 'asset/image/bmi.jpeg',
                    text: 'BMI',
                    onTap: () {
                      Navigator.pushNamed(context, AppRoute.bmi);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Today`s Medicine',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
              ),
            ),
            MedicineCard(
              name: 'Metformin',
              dose: '500mg',
              time: '8:00 AM',
              isTaken: 'Taken',
              icon: Icons.check_circle_outline,
              containerColor: AppColors.bgBtnColor,
              iconColor: AppColors.icon,
              textColor: AppColors.textColor,
              height: 35,
              width: 85,
            ),
            MedicineCard(
              name: 'Lisinporil',
              dose: '10mg',
              time: '9:00 AM',
              isTaken: 'Upcoming',
              icon: Icons.access_time,
              containerColor: AppColors.bgBtnColor1,
              iconColor: AppColors.icon1,
              textColor: AppColors.textColor1,
              height: 35,
              width: 110,
            ),
            MedicineCard(
              name: 'Atorvastain',
              dose: '20mg',
              time: '9:00 PM',
              isTaken: 'Missed',
              icon: Icons.cancel_outlined,
              containerColor: AppColors.bgBtnColor2,
              iconColor: AppColors.icon2,
              textColor: AppColors.textColor2,
              height: 35,
              width: 100,
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Upcoming Appointments',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
              ),
            ),
            AppointmentCard(
              containerColor: AppColors.bgBtnColor1,
              iconColor: AppColors.icon1,
              name: 'Dr.Smith - Annual Checkup',
              date: 'Oct 26',
              time: '2:00 PM',
            ),
            SizedBox(height: 10),
            AppointmentCard(
              containerColor: AppColors.bgBtnColor1,
              iconColor: AppColors.icon1,
              name: 'Dental Cleaning',
              date: 'Nov 15',
              time: '11:30 AM',
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
