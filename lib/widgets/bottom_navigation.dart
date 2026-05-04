import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterproj/pages/tarifPage.dart';
import 'package:flutterproj/pages/share.dart';
import 'package:flutterproj/pages/profile.dart';

import '../pages/connteciton.dart';
import '../pages/pageM.dart';

class BottomNavigation extends StatelessWidget {
  final BuildContext context;

  const BottomNavigation({super.key, required this.context});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildNavItem(
            asset: 'images/IconP1.svg',
            label: 'Подключиться',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PageM()),
              );
            },
          ),
          _buildNavItem(
            asset: 'images/IconP2.svg',
            label: 'Тарифы',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const tarifPage()),
              );
            },
          ),
          _buildNavItem(
            asset: 'images/IconP3.svg',
            label: 'Поделиться',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const share()),
              );
            },
          ),
          _buildNavItem(
            asset: 'images/IconP4.svg',
            label: 'Профиль',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const profile()),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildNavItem({
    required String asset,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          SvgPicture.asset(
            asset,
            width: 24,
            height: 24,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(fontSize: 10, color: Colors.white),
          ),
        ],
      ),
    );
  }
}