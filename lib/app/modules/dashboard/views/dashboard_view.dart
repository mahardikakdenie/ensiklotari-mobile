import 'package:ensiklotari/app/data/icon/ikon_icons.dart';
import 'package:ensiklotari/app/modules/profile/views/profile_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ensiklotari/app/modules/home/views/home_view.dart';

import '../../promo/views/promo_view.dart';
import '../../transaction/views/transaction_view.dart';
import '../controllers/dashboard_controller.dart';

import 'package:flutter/cupertino.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomeView(),
                PromoView(),
                TransactionView(),
                ProfileView(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black.withOpacity(0.8),
            selectedItemColor: Color(0xFF442F90),
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedFontSize: 10,
            selectedLabelStyle: TextStyle(),
            unselectedFontSize: 10,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            elevation: 0,
            items: [
              _bottomNavigationBarItem(
                icon: CupertinoIcons.home,
                label: 'Home',
              ),
              _bottomNavigationBarItem(
                icon: Ikon.new_releases,
                label: 'Promos',
              ),
              _bottomNavigationBarItem(
                icon: Ikon.assignment,
                label: 'Orders',
              ),
              _bottomNavigationBarItem(
                icon: CupertinoIcons.person,
                label: 'Account',
              ),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
