import 'package:flutter/material.dart';
import 'package:yolcunun_defteri/colors.dart';
import 'package:yolcunun_defteri/my_icon_icons.dart';
import 'package:yolcunun_defteri/pages/cities.dart';

class SideBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ListTile(
            title: Text(
              'Kategoriler',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              MyIcon.globe,
              color: AppColors.orange,
            ),
            title: Text(
              'Şehirler',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CitiesPage())
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              MyIcon.food,
              color: AppColors.orange,
            ),
            title: Text(
              'Yerel Mutfak',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              MyIcon.camera_alt,
              color: AppColors.orange,
            ),
            title: Text(
              'Manzara',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              MyIcon.ticket_alt,
              color: AppColors.orange,
            ),
            title: Text(
              'Etkinlikler',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              MyIcon.map_marker,
              color: AppColors.orange,
            ),
            title: Text(
              'Turlar',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              MyIcon.hotel,
              color: AppColors.orange,
            ),
            title: Text(
              'Konaklama',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              MyIcon.cog,
              color: AppColors.orange,
            ),
            title: Text(
              'Ayarlar',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              MyIcon.logout,
              color: Colors.red,
            ),
            title: Text(
              'Çıkış',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    );
  }
}