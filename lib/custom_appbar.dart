import 'package:flutter/material.dart';
import 'package:yolcunun_defteri/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
@override
  final Size preferredSize;

  final String appBarTitle;
  final IconData leadingIcon;
  final Color iconColor;
  final Function()? onLeadingPressed;

  CustomAppBar({Key? key, 
  required this.appBarTitle,
  required this.leadingIcon,
  this.iconColor = Colors.white,
  this.onLeadingPressed,
  })
   : preferredSize = const Size.fromHeight(56.0),
    super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.orange,
      title: Text(
        appBarTitle,
        style: TextStyle(color: AppColors.font, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          leadingIcon,
          color: iconColor,),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
    );
  }
}