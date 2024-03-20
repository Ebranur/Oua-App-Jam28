import 'package:flutter/material.dart';
import 'package:yolcunun_defteri/colors.dart';
import 'package:yolcunun_defteri/my_icon_icons.dart';
import 'package:yolcunun_defteri/pages/discover_page.dart';
import 'package:yolcunun_defteri/pages/step_page.dart';

class BarNavigation extends StatefulWidget {
  const BarNavigation({super.key});

  @override
  State<BarNavigation> createState() => _BarNavigationState();
}

class _BarNavigationState extends State<BarNavigation> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          label: 'Keşfet',
          icon: Icon(
            MyIcon.globe,
            color: _selectedIndex == 0 ?AppColors.orange : Colors.grey,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Kupon',
          icon: Icon(
            MyIcon.ticket_alt,
            color: _selectedIndex == 1 ? AppColors.orange : Colors.grey,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Profil',
          icon: Icon(
            Icons.person,
            color: _selectedIndex == 2 ? AppColors.orange : Colors.grey,
          ),
        )
      ],
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
        switch(index) {
          case 0:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DiscoverPage()),
          );
          break;
          case 1:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AdimScreen()),
          );
          break;
        }
      },
      selectedItemColor: AppColors.orange,
      unselectedItemColor: Colors.grey,
    );
  }
}