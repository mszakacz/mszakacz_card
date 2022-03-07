import 'package:mszakacz_card/constant/positions.dart';
import 'package:mszakacz_card/models/window.dart';

List<Window> clickCard(int clickedItem) {
  if (clickedItem == 0) {
    return [
      largeTopLeft,
      botLeft,
      botCenter,
      botRight,
      midRight,
      topRight,
    ];
  } else if (clickedItem == 1) {
    return [
      topLeft,
      largeBotLeft,
      botRight,
      midRight,
      topRight,
      topCenter,
    ];
  } else if (clickedItem == 2) {
    return [
      topCenter,
      topLeft,
      largeBotLeft,
      botRight,
      midRight,
      topRight,
    ];
  } else if (clickedItem == 3) {
    return [
      topLeft,
      midLeft,
      botLeft,
      largeBotRight,
      topRight,
      topCenter,
    ];
  } else if (clickedItem == 4) {
    return [
      midLeft,
      botLeft,
      botCenter,
      botRight,
      largeTopRight,
      topLeft,
    ];
  } else {
    // for clickedItem == 5
    return [
      topLeft,
      midLeft,
      botLeft,
      botCenter,
      botRight,
      largeTopRight,
    ];
  }
}
