import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mszakacz_card/l10n/l10n.dart';

class AnimatedGoalsWidget extends StatelessWidget {
  const AnimatedGoalsWidget({
    Key? key,
    required this.selected,
  }) : super(key: key);

  final bool selected;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [
            0.2,
            0.8,
          ],
          colors: [
            Color.fromARGB(255, 8, 138, 245),
            Color.fromARGB(255, 82, 192, 243),
          ],
        ),
      ),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: selected
            ? const Center(
                child: Text(
                  'Goals',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Agne',
                    color: Color.fromARGB(255, 8, 50, 53),
                  ),
                ),
              )
            : Center(
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 14,
                    fontFamily: 'Bobbers',
                    color: Color.fromARGB(255, 15, 8, 53),
                  ),
                  child: AnimatedTextKit(
                    isRepeatingAnimation: false,
                    animatedTexts: [
                      TyperAnimatedText(
                        l10n.animatedGoalsWidgetText,
                        speed: const Duration(milliseconds: 50),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
