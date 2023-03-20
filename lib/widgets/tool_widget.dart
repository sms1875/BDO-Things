import 'package:flutter/material.dart';

import '../utils/page_map.dart';

class ToolWidget extends StatelessWidget {
  const ToolWidget({Key? key, required this.toolData}) : super(key: key);

  final List<Map<String, String>> toolData;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16.0,
      runSpacing: 16.0,
      children: toolData.map((_toolData) {
        final tool = toolData.firstWhere(
              (tool) => tool['name'] == _toolData['name'],
          orElse: () => {'page': ''},
        );
        final pageName = tool['page'] ?? 'default';
        final page = pageMap[pageName]?.call() ?? pageMap['default']!.call();
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => page));
          },
          child: Container(
            width: 350,
            height: 80,
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(60, 60, 60, 1),
            ),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/${_toolData['image']}.png'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      _toolData['name']!,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Sora',
                        fontSize: 16,
                        letterSpacing: 1,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}