import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class DemoBlackKey extends StatefulWidget {
  const DemoBlackKey({
    super.key,
    required this.audioPlayer,
  });
  final String audioPlayer;

  @override
  State<DemoBlackKey> createState() => _DemoBlackKeyState();
}

bool isPressed = false;
final player = AudioPlayer();

class _DemoBlackKeyState extends State<DemoBlackKey> {
  void play() async {
    await player.stop();
    player.play(AssetSource("${widget.audioPlayer}.mp3"));
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
        setState(() {
          isPressed = false;
        });
      },
      child: Transform(
        transform: Matrix4.rotationX(isPressed ? 0.3 : 0.0),
        child: Container(
          color: isPressed ? Colors.blueGrey : Colors.black,
          width: 60,
          height: 200,
          child: Stack(
              alignment: isPressed ? Alignment.topCenter : Alignment.center,
              children: [
                Transform(
                  transform: Matrix4.rotationX(0.0),
                  child: isPressed
                      ? const CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 10,
                        )
                      : const CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 10,
                        ),
                ),
              ]),
        ),
      ),
    );
  }
}
