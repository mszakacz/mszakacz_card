import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class PictureWidget extends StatelessWidget {
  const PictureWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Image.asset('assets/images/profile_picture.jpeg'),
      fit: BoxFit.fill,
    );
  }
}
