import 'package:flutter/material.dart';
import 'package:mszakacz_card/l10n/l10n.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({Key? key}) : super(key: key);

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
        child: Text(
          l10n.nameWidgetText,
          style: const TextStyle(
            fontSize: 22,
            fontFamily: 'Agne',
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
