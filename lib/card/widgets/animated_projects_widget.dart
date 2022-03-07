import 'package:flutter/material.dart';
import 'package:mszakacz_card/l10n/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class AnimatedProjectsWidget extends StatelessWidget {
  const AnimatedProjectsWidget({
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
            Color.fromARGB(255, 240, 236, 32),
            Color.fromARGB(255, 218, 148, 20),
          ],
        ),
      ),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: selected
            ? const Center(
                child: Text(
                  'Projects',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Agne',
                    color: Color.fromARGB(255, 23, 14, 145),
                  ),
                ),
              )
            : Center(
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Bobbers',
                    color: Color.fromARGB(255, 15, 8, 53),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          const _url = 'https://better-organizer.web.app/#/';
                          if (!await launch(
                            _url,
                          )) throw 'Could not launch $_url';
                        },
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(l10n.animatedProjectsWidgetText1),
                        ),
                      ),
                      const SizedBox(height: 15),
                      GestureDetector(
                        onTap: () async {
                          const _url = 'https://github.com/mszakacz/user-list';
                          if (!await launch(
                            _url,
                          )) throw 'Could not launch $_url';
                        },
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(l10n.animatedProjectsWidgetText2),
                        ),
                      ),
                      const SizedBox(height: 15),
                      GestureDetector(
                        onTap: () async {
                          const _url =
                              'https://github.com/mszakacz/flutter-number-to-word';
                          if (!await launch(
                            _url,
                          )) throw 'Could not launch $_url';
                        },
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(l10n.animatedProjectsWidgetText3),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
