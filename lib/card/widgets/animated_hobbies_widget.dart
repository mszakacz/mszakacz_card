import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mszakacz_card/l10n/l10n.dart';

class AnimatedHobbiesWidget extends StatelessWidget {
  const AnimatedHobbiesWidget({Key? key, required this.selected})
      : super(key: key);

  final bool selected;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
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
                      color: Colors.white,
                    ),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        ScaleAnimatedText(
                          l10n.animatedHobbiesWidgetText1,
                          duration: const Duration(seconds: 4),
                        ),
                        ScaleAnimatedText(
                          l10n.animatedHobbiesWidgetText2,
                          duration: const Duration(seconds: 4),
                        ),
                        ScaleAnimatedText(
                          l10n.animatedHobbiesWidgetText3,
                          duration: const Duration(seconds: 4),
                        ),
                        ScaleAnimatedText(
                          l10n.animatedHobbiesWidgetText4,
                          duration: const Duration(seconds: 4),
                        ),
                        ScaleAnimatedText(
                          l10n.animatedHobbiesWidgetText5,
                          duration: const Duration(seconds: 4),
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
