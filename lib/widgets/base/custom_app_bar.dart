import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: preferredSize,
      child: AppBar(
        backgroundColor: Constants.backgroundColor,
        elevation: 2,
        centerTitle: true,
        titleSpacing: 0,
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
          //국가선택
          PopupMenuButton<String>(
            icon: const Icon(Icons.language),
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'Korea',
                  child: Text('한국'),
                ),
                const PopupMenuItem<String>(
                  value: '미국',
                  child: Text('미국'),
                ),
                const PopupMenuItem<String>(
                  value: '유럽',
                  child: Text('유럽'),
                ),
                const PopupMenuItem<String>(
                  value: '러시아',
                  child: Text('러시아'),
                ),
                const PopupMenuItem<String>(
                  value: '일본',
                  child: Text('일본'),
                ),
              ];
            },
            onSelected: (String value) {
              // 팝업 메뉴에서 선택한 항목에 따라 실행할 동작을 여기에 작성하세요.
            },
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20); // 여백 추가
}