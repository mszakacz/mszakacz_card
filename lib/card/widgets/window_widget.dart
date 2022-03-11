// ignore_for_file: prefer_final_locals

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mszakacz_card/card/bloc/card_bloc.dart';

import 'package:mszakacz_card/constant/positions.dart';

class WindowWidget extends StatefulWidget {
  const WindowWidget({
    Key? key,
    required this.windowPosition,
    required this.child,
    required this.windowIndex,
  }) : super(key: key);

  final WindowPosition windowPosition;
  final Widget child;
  final int windowIndex;

  @override
  _WindowWidgetState createState() => _WindowWidgetState();
}

class _WindowWidgetState extends State<WindowWidget> {
  @override
  Widget build(BuildContext context) {
    //  Screen size
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    // Size of the grid
    double containerSize = min(screenWidth, screenHeight);
    var smallWindowSize = containerSize / 3;
    var largeWindowSize = smallWindowSize * 2;

    // Positions of the small windows
    var topRowPositionTop = (screenHeight - containerSize) / 2;
    var midRowPositionTop = topRowPositionTop + smallWindowSize;
    var botRowPositionTop = topRowPositionTop + 2 * smallWindowSize;

    var leftColumnPositionLeft = (screenWidth - containerSize) / 2;
    var midColumnPositionLeft = leftColumnPositionLeft + smallWindowSize;
    var rightColumnPositionLeft = leftColumnPositionLeft + 2 * smallWindowSize;

    // Positions of the large windows
    var topLargeWindowTop = topRowPositionTop;
    var botLargeWindowTop = topRowPositionTop + smallWindowSize;

    var leftLargeWindowLeft = leftColumnPositionLeft;
    var rightLargeWindowLeft = leftColumnPositionLeft + smallWindowSize;

    // Declaration of needed parameters
    late double size;
    late double top;
    late double left;

    // Statement related to WindowPosition

    if (widget.windowPosition.toString().contains('large')) {
      size = largeWindowSize;
      if (widget.windowPosition.toString().contains('Left')) {
        left = leftLargeWindowLeft;
      } else if (widget.windowPosition.toString().contains('Right')) {
        left = rightLargeWindowLeft;
      }
      if (widget.windowPosition.toString().contains('Top')) {
        top = topLargeWindowTop;
      } else if (widget.windowPosition.toString().contains('Bot')) {
        top = botLargeWindowTop;
      }
    } else {
      size = smallWindowSize;
      if (widget.windowPosition.toString().contains('Left')) {
        left = leftColumnPositionLeft;
      } else if (widget.windowPosition.toString().contains('Center')) {
        left = midColumnPositionLeft;
      } else if (widget.windowPosition.toString().contains('Right')) {
        left = rightColumnPositionLeft;
      }
      if (widget.windowPosition.toString().contains('top')) {
        top = topRowPositionTop;
      } else if (widget.windowPosition.toString().contains('mid')) {
        top = midRowPositionTop;
      } else if (widget.windowPosition.toString().contains('bot')) {
        top = botRowPositionTop;
      }
    }

    return AnimatedPositioned(
      width: size,
      height: size,
      top: top,
      left: left,
      duration: const Duration(milliseconds: 500),
      child: GestureDetector(
        onTap: () => BlocProvider.of<CardBloc>(context).add(
          TapWindow(
            clickedWindowIndex: widget.windowIndex,
          ),
        ),
        child: widget.child,
      ),
    );
  }
}
