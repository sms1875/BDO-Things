import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title:Padding(
        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Text('BDO Things'),
      ),
      backgroundColor: Color.fromRGBO(40, 40, 40, 1),
      elevation: 0.0,
      /*
      leading: IconButton(
        icon: Icon(Icons.menu),//앱 대표아이콘
        onPressed: () {},
      ),
      */
      actions: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child:
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                print('홈');
              },
            )
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child:
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                print('세팅');
              },
            )
        ),
      ],
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}