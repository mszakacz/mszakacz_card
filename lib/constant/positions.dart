import 'package:mszakacz_card/card/logic/dimensions.dart';
import 'package:mszakacz_card/models/window.dart';

final topLeft = Window(
  top: topRowPositionTop,
  left: leftColumnPositionLeft,
  size: smallWindowSize,
  selected: false,
);
final topCenter = Window(
  top: topRowPositionTop,
  left: midColumnPositionLeft,
  size: smallWindowSize,
  selected: false,
);
final topRight = Window(
  top: topRowPositionTop,
  left: rightColumnPositionLeft,
  size: smallWindowSize,
  selected: false,
);
final midLeft = Window(
  top: midRowPositionTop,
  left: leftColumnPositionLeft,
  size: smallWindowSize,
  selected: false,
);
final midRight = Window(
  top: midRowPositionTop,
  left: rightColumnPositionLeft,
  size: smallWindowSize,
  selected: false,
);
final botLeft = Window(
  top: botRowPositionTop,
  left: leftColumnPositionLeft,
  size: smallWindowSize,
  selected: false,
);
final botCenter = Window(
  top: botRowPositionTop,
  left: midColumnPositionLeft,
  size: smallWindowSize,
  selected: false,
);
final botRight = Window(
  top: botRowPositionTop,
  left: rightColumnPositionLeft,
  size: smallWindowSize,
  selected: false,
);
final largeTopLeft = Window(
  top: topLargeWindowTop,
  left: leftLargeWindowLeft,
  size: largeWindowSize,
  selected: true,
);
final largeTopRight = Window(
  top: topLargeWindowTop,
  left: rightLargeWindowLeft,
  size: largeWindowSize,
  selected: true,
);
final largeBotLeft = Window(
  top: botLargeWindowTop,
  left: leftLargeWindowLeft,
  size: largeWindowSize,
  selected: true,
);
final largeBotRight = Window(
  top: botLargeWindowTop,
  left: rightLargeWindowLeft,
  size: largeWindowSize,
  selected: true,
);
