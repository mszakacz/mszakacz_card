import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedHobbiesWidget extends StatelessWidget {
  const AnimatedHobbiesWidget({Key? key, required this.selected})
      : super(key: key);

  final bool selected;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      child: !selected
          ? Image.asset(
              'assets/images/basketball.jpeg',
              colorBlendMode: BlendMode.modulate,
            )
          : Stack(
              children: [
                Image.asset(
                  'assets/images/basketball.jpeg',
                  color: Colors.grey.withOpacity(0.98),
                  colorBlendMode: BlendMode.modulate,
                ),
                Center(
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 20,
                      fontFamily: 'Agne',
                      color: Colors.white,
                    ),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        ScaleAnimatedText(
                          'Airspace engineer 🚀',
                          duration: const Duration(seconds: 5),
                        ),
                        ScaleAnimatedText(
                          'Basketball player 🏀',
                          duration: const Duration(seconds: 5),
                        ),
                        ScaleAnimatedText(
                          'Sport lover 🏋🏼‍♀️',
                          duration: const Duration(seconds: 5),
                        ),
                        ScaleAnimatedText(
                          'Math lover 🤓',
                          duration: const Duration(seconds: 5),
                        ),
                        ScaleAnimatedText(
                          'Ice swimmer 🥶',
                          duration: const Duration(seconds: 5),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
