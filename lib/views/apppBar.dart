import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimateText extends StatelessWidget {
  const AnimateText({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        WavyAnimatedText('Myanmar Futsal'),
        WavyAnimatedText('Look at the waves'),
      ],
      isRepeatingAnimation: true,
      onTap: () {
        print("Tap Event");
      },
    );
  }
}
