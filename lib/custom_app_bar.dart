import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromRGBO(40, 40, 40, 1),
      elevation: 0.0,
      flexibleSpace: Center(
        child: InkWell(
          borderRadius: BorderRadius.circular(1.0),
          onTap: Navigator.canPop(context) ? () => Navigator.pop(context) : null,
          child: Text(
            'BDO Things',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 32.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              print('세팅');
            },
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100);
}