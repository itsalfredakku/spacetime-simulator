import 'package:flutter/material.dart';

class FooterComponent extends StatelessWidget {
  const FooterComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.transparent,
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Developed by Akash Shah (@itsalfredakku)', style: TextStyle(color: Colors.white),)
              ],
            )
          ],
        ));
  }
}
