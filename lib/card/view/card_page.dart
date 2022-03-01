import 'package:flutter/material.dart';
import '../../consts/dimensions.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CardView();
  }
}

class CardView extends StatelessWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyStatefulWidget();
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 50,
      child: Stack(
        children: <Widget>[
          Center(
            child: Container(
              height: containerSize,
              width: containerSize,
              color: Colors.yellow,
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(seconds: 1),
            top: botRowPositionTop,
            left: leftColumnPositionLeft,
            child: Container(
              height: smallWindowSize,
              width: smallWindowSize,
              color: Colors.blue,
              child: Center(
                child: Text('1'),
              ),
            ),
          ),
          AnimatedPositioned(
            width: selected ? 200.0 : 50.0,
            height: selected ? 50.0 : 200.0,
            top: selected ? 50.0 : 150.0,
            left: selected ? 50.0 : 100.0,
            duration: const Duration(seconds: 2),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Container(
                color: Colors.blue,
                child: const Center(
                  child: Text('1'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
