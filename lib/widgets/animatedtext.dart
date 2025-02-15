import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
class AnimatedTextWidgetTest extends StatelessWidget {
  const AnimatedTextWidgetTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Text Kit Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText(
                "HELLO WORLD",
                textStyle: TextStyle(fontSize: 30, fontWeight:FontWeight.bold),
                
              )

            ],
          ),
          AnimatedTextKit(animatedTexts: [
            TypewriterAnimatedText(
              "Abdul wadud",
              textStyle: TextStyle(fontSize: 60, fontWeight: FontWeight.bold, color: Color.green),
            )
          ]
          
          )
        ],
      )
    );
  }
}