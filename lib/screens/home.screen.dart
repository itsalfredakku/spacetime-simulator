import 'dart:ui';

import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:spacetime/component/footer.component.dart';
import 'package:spacetime/component/header.component.dart';
import 'package:spacetime/screens/widgets/stars.widget.dart';
import 'package:video_player/video_player.dart';

import '../component/absolute_positioned.component.dart';
import '../component/overlay.component.dart';
import '../models/position.model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late VideoPlayerController _videoController;
  @override
  void initState() {
    super.initState();
    _videoController = VideoPlayerController.asset(
        'assets/videos/stars.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: const Color(0xFF050204),
          ),

          // Stars
          AbsolutePositionedComponent(
            position: PositionModel(
              x: 0,
              y: 0,
              size: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height),
            ),
            child: VideoPlayer(_videoController),
          ),

          // Black-hole
          Positioned(
            top: MediaQuery.of(context).size.height / 3,
            left: 100,
            child: SizedBox(
                height: 500,
                width: 500,
                child: Image.asset('assets/gifs/black-hole.gif')),
          ),

          // Miller's planet
          Positioned(
            top: MediaQuery.of(context).size.height / 3,
            left: 500,
            child: SizedBox(
              height: 72,
              width: 72,
                child: Image.asset('assets/gifs/millers-unscreen.gif')),
          ),

          // Earth
          Positioned(
            top: MediaQuery.of(context).size.height / 3,
            right: 100,
            child: SizedBox(
              height: 150,
              width: 150,
                child: Lottie.asset('assets/lottie/45756-earth-globe-looped-icon.json')),
          ),
          /*Positioned(
            top: MediaQuery.of(context).size.height / 3,
            right: 100,
            child: SizedBox(
              height: 300,
              width: 300,
                child: Lottie.asset('assets/lottie/40712-circling-of-the-sun-by-the-planets-was-discovered-by-nicolaus-copernicus.json')),
          ),*/

          /*Positioned(
              bottom: 16,
              right: 16,
              child: Container(
                color: Colors.white.withOpacity(0.5),
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 4,
              )),*/

          // OverlayComponent(),
        ],
      ),
    );
  }
}
