import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OverlayComponent extends StatelessWidget {
  const OverlayComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(16),
      color: const Color(0xFF050204),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Time is not absolute',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 72,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
            Text(
              'always moves relative to the observer',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
              ),
            ),
            SizedBox(height: 32,),
            IconButton(onPressed: () {}, icon: const Icon(Icons.play_arrow_outlined, size: 96, color: Colors.white,))
          ],
        ),
      ),
    );
  }
}
