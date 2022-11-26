import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({Key? key, required this.pageName}) : super(key: key);
  final String pageName;
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.transparent,
        padding: const EdgeInsets.all(16.0),
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(pageName, style: const TextStyle(color: Colors.white, fontSize: 24),)
              ],
            )
          ],
        ));
  }
}
