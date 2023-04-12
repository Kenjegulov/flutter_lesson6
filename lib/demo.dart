import 'package:flutter/material.dart';
import 'components/demo_black.dart';
import 'components/demo_white.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: 300,
        child: Stack(
          children: [
            ListView.builder(
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, index) {
                return const DemoWhiteKey();
              },
            ),
            const Row(
              children: [
                SizedBox(
                  width: 50,
                ),
                DemoBlackKey(audioPlayer: "note1"),
                SizedBox(
                  width: 20,
                ),
                DemoBlackKey(audioPlayer: "note2"),
                SizedBox(
                  width: 20,
                ),
                DemoBlackKey(audioPlayer: "note3"),
                SizedBox(
                  width: 20,
                ),
                DemoBlackKey(audioPlayer: "note4"),
                SizedBox(
                  width: 20,
                ),
                DemoBlackKey(audioPlayer: "note5"),
                SizedBox(
                  width: 20,
                ),
                DemoBlackKey(audioPlayer: "note6"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
