import 'package:bdo_things/constants.dart';
import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: CONSTANTS.BACKGROUNDCOLOR,
      elevation: 2,
      centerTitle: true,
      titleSpacing: 0,
      title: InkWell(
        borderRadius: BorderRadius.circular(1.0),
        onTap: () {
          if (Navigator.of(context).canPop()) {
            Navigator.of(context).popUntil((route) => route.isFirst);
          }
        },
        child: const Text(
          'BDO Things',
          style: CONSTANTS.appBarTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
      actions: [
        // 국가 선택
        DropdownButton<String>(
          icon: const Icon(Icons.language),
          items: <String>[
            '한국',
            '미국',
            '유럽',
            '러시아',
            '일본',
          ].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? value) {
            // 선택한 항목에 따라 실행할 동작을 여기에 작성하세요.
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
