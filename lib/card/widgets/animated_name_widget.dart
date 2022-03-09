import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mszakacz_card/l10n/l10n.dart';

class AnimatedNameWidget extends StatelessWidget {
  const AnimatedNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [
            0.2,
            0.8,
          ],
          colors: [
            Color.fromARGB(255, 13, 67, 182),
            Color.fromARGB(255, 18, 1, 48),
          ],
        ),
      ),
      child: Center(
        child: DefaultTextStyle(
          style: const TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
          child: AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              TypewriterAnimatedText(
                l10n.animatedNameWidgetText1,
                speed: const Duration(milliseconds: 200),
              ),
              TypewriterAnimatedText(
                l10n.animatedNameWidgetText2,
                speed: const Duration(milliseconds: 200),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
