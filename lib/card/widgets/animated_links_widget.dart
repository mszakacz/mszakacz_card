import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AnimatedLinksWidget extends StatelessWidget {
  const AnimatedLinksWidget({Key? key, required this.selected})
      : super(key: key);
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IgnorePointer(
          ignoring: selected,
          child: AnimatedOpacity(
            opacity: selected ? 0.0 : 1.0,
            duration: const Duration(milliseconds: 500),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [
                    0.1,
                    0.9,
                  ],
                  colors: [
                    Color.fromARGB(255, 122, 235, 29),
                    Color.fromARGB(255, 125, 243, 243),
                  ],
                ),
              ),
              child: const Center(
                child: Text(
                  'Find me',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Agne',
                    color: Color.fromARGB(255, 32, 8, 88),
                  ),
                ),
              ),
            ),
          ),
        ),
        IgnorePointer(
          ignoring: !selected,
          child: AnimatedOpacity(
            opacity: selected ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [
                    0.1,
                    0.9,
                  ],
                  colors: [
                    Color.fromARGB(255, 122, 235, 29),
                    Color.fromARGB(255, 125, 243, 243),
                  ],
                ),
              ),
              child: Center(
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 25,
                    fontFamily: 'Agne',
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // GitHub
                      GestureDetector(
                        onTap: () async {
                          const _url = 'https://github.com/mszakacz';
                          if (!await launch(
                            _url,
                          )) throw 'Could not launch $_url';
                        },
                        child: Image.asset(
                          './assets/images/github.png',
                          width: 96,
                          height: 54,
                        ),
                      ),
                      const SizedBox(height: 10),

                      // Stack Overflow
                      GestureDetector(
                        onTap: () async {
                          const _url =
                              'https://stackoverflow.com/users/18102423/maciej-szakacz';
                          if (!await launch(
                            _url,
                          )) throw 'Could not launch $_url';
                        },
                        child: Image.asset(
                          './assets/images/stackoverflow.png',
                          width: 200,
                          height: 40,
                        ),
                      ),
                      const SizedBox(height: 10),

                      // LinkedIn
                      GestureDetector(
                        onTap: () async {
                          const _url =
                              'https://linkedin.com/in/maciej-szakacz/';
                          if (!await launch(
                            _url,
                          )) throw 'Could not launch $_url';
                        },
                        child: Image.asset(
                          './assets/images/linkedin.png',
                          width: 120,
                          height: 30,
                        ),
                      ),
                      const SizedBox(height: 10),

                      // Gmail

                      AnimatedTextKit(
                        repeatForever: true,
                        pause: const Duration(milliseconds: 1500),
                        animatedTexts: [
                          ColorizeAnimatedText(
                            'mszakacz.gmail.com',
                            textStyle: const TextStyle(
                              fontSize: 16,
                            ),
                            colors: const [
                              Color.fromARGB(255, 50, 4, 58),
                              Color.fromARGB(255, 5, 168, 197),
                              Color.fromARGB(255, 7, 22, 240),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
