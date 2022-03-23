import 'package:flutter/material.dart';
import 'package:mszakacz_card/constant/exceptions.dart';
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
            0.1,
            0.9,
          ],
          colors: [
            Colors.orange,
            Color.fromARGB(255, 255, 216, 88),
          ],
        ),
      ),
      child: Stack(
        children: [
          AnimatedOpacity(
            duration: const Duration(milliseconds: 500),
            opacity: selected ? 0.0 : 1.0,
            child: Center(
              child: Text(
                l10n.animatedProjectsWidgetName,
                style: const TextStyle(
                  fontSize: 22,
                  color: Color.fromARGB(255, 23, 14, 145),
                ),
              ),
            ),
          ),
          IgnorePointer(
            ignoring: !selected,
            child: AnimatedOpacity(
              opacity: selected ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 500),
              child: Center(
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 9, 30, 146),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Project 1 - Portfolio

                      GestureDetector(
                        onTap: () async {
                          const _url =
                              'https://github.com/mszakacz/mszakacz_card#readme';
                          if (!await launch(
                            _url,
                          )) throw LaunchUrlFailure();
                        },
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Row(
                            children: [
                              const FlutterLogo(),
                              const SizedBox(width: 10),
                              Text(
                                l10n.animatedProjectsWidgetText4,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),

                      // Project 2

                      GestureDetector(
                        onTap: () async {
                          const _url =
                              'https://github.com/mszakacz/better_organizer#readme';
                          if (!await launch(
                            _url,
                          )) throw LaunchUrlFailure();
                        },
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Row(
                            children: [
                              const FlutterLogo(),
                              const SizedBox(width: 10),
                              Text(
                                l10n.animatedProjectsWidgetText1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      GestureDetector(
                        onTap: () async {
                          const _url =
                              'https://github.com/mszakacz/user-list#readme';
                          if (!await launch(
                            _url,
                          )) throw LaunchUrlFailure();
                        },
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Row(
                            children: [
                              const FlutterLogo(),
                              const SizedBox(width: 10),
                              Text(
                                l10n.animatedProjectsWidgetText2,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),

                      // Project 3

                      GestureDetector(
                        onTap: () async {
                          const _url =
                              'https://github.com/mszakacz/flutter-number-to-word#readme';
                          if (!await launch(
                            _url,
                          )) throw LaunchUrlFailure();
                        },
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Row(
                            children: [
                              const FlutterLogo(),
                              const SizedBox(width: 10),
                              Text(
                                l10n.animatedProjectsWidgetText3,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
