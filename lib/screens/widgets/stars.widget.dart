import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class StarsWidget extends StatelessWidget {
  const StarsWidget({Key? key, required this.controller}) : super(key: key);
  final VideoPlayerController controller;
  @override
  Widget build(BuildContext context) {
    return VideoPlayer(controller);
  }
}
