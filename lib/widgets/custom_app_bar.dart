import 'package:flutter/material.dart';

import '../utils/constants.dart';

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
        onTap: Navigator.of(context).canPop() ? () => Navigator.of(context).popUntil((route) => route.isFirst): null,
        child: const Text(
          'BDO Things',
          style: Constants.appBarTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            if (ModalRoute.of(context)?.settings.name != '/setting_page') {
              Navigator.pushNamed(context, '/setting_page');
            }
          },
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}