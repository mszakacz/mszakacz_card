import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mszakacz_card/card/bloc/card_bloc.dart';
import 'package:mszakacz_card/models/window.dart';

class WindowWidget extends StatefulWidget {
  const WindowWidget({
    Key? key,
    required this.window,
    required this.child,
  }) : super(key: key);

  final Window window;
  final Widget child;

  @override
  _WindowWidgetState createState() => _WindowWidgetState();
}

class _WindowWidgetState extends State<WindowWidget> {
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      width: widget.window.size,
      height: widget.window.size,
      top: widget.window.top,
      left: widget.window.left,
      duration: const Duration(seconds: 1),
      child: GestureDetector(
        onTap: () => BlocProvider.of<CardBloc>(context).add(
          TapWindow(clickedWindow: widget.window),
        ),
        child: widget.child,
      ),
    );
  }
}
