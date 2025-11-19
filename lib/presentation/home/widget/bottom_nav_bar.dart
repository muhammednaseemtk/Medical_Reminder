import 'package:flutter/material.dart';
import 'package:medical_reminder/core/theme/app_colors.dart';

class BottomNavBar extends StatelessWidget {
  final int index;
  final ValueChanged<int> onTap;
  const BottomNavBar({super.key, required this.index, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      backgroundColor: AppColors.white,
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.icon1,
        unselectedItemColor: AppColors.txtColor,
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_outlined),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Statistics',
          ),

          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      );
  }
}
