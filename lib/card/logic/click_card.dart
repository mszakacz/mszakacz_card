import 'package:mszakacz_card/constant/positions.dart';
import 'package:mszakacz_card/models/window.dart';

List<Window> clickCard(int clickedItem) {
  if (clickedItem == 0) {
    return [
      largeBotRight,
      botLeft,
      midLeft,
      topLeft,
      topCenter,
      topRight,
    ];
  } else if (clickedItem == 1) {
    return [
      botRight,
      largeBotLeft,
      topLeft,
      topCenter,
      topRight,
      midRight,
    ];
  } else if (clickedItem == 2) {
    return [
      midRight,
      botRight,
      largeBotLeft,
      topLeft,
      topCenter,
      topRight,
    ];
  } else if (clickedItem == 3) {
    return [
      botRight,
      botCenter,
      botLeft,
      largeTopLeft,
      topRight,
      midRight,
    ];
  } else if (clickedItem == 4) {
    return [
      botCenter,
      botLeft,
      midLeft,
      topLeft,
      largeTopRight,
      botRight,
    ];
  } else {
    // for clickedItem == 5
    return [
      botRight,
      botCenter,
      botLeft,
      midLeft,
      topLeft,
      largeTopRight,
    ];
  }
}
