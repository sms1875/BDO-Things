import 'package:flutter/material.dart';

import '../constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Constants.backgroundColor,
      elevation: 0,
      centerTitle: true,
      title: InkWell(
        borderRadius: BorderRadius.circular(1.0),
        onTap: Navigator.of(context).canPop() ? () => Navigator.of(context).pop() : null,
        child: const Text(
          'BDO Things',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 32.0,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            print('Settings');
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}