import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class DemoWhiteKey extends StatefulWidget {
  const DemoWhiteKey({
    super.key,
    // required this.audioPlayer,
  });
  // final String audioPlayer;

  @override
  State<DemoWhiteKey> createState() => _DemoWhiteKeyState();
}

final player = AudioPlayer();
bool isPressed = false;

class _DemoWhiteKeyState extends State<DemoWhiteKey> {
  void play() async {
    await player.stop();
    // player.play(AssetSource("${widget.audioPlayer}.mp3"));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        play();
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (details) {
        play();
        setState(() {
          isPressed = false;
        });
      },
      child: Transform(
        transform: Matrix4.rotationX(isPressed ? 0.5 : 0.0),
        child: Container(
          width: 80,
          height: 50,
          decoration: BoxDecoration(
            color: isPressed ? Colors.grey[300] : Colors.white,
            border: Border.all(color: Colors.black, width: 1),
          ),
        ),
      ),
    );
  }
}
