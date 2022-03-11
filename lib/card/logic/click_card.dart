import 'package:mszakacz_card/constant/positions.dart';

List<WindowPosition> clickCard(int clickedItem) {
  if (clickedItem == 0) {
    return [
      WindowPosition.largeTopLeft,
      WindowPosition.botLeft,
      WindowPosition.botCenter,
      WindowPosition.botRight,
      WindowPosition.midRight,
      WindowPosition.topRight,
    ];
  } else if (clickedItem == 1) {
    return [
      WindowPosition.topLeft,
      WindowPosition.largeBotLeft,
      WindowPosition.botRight,
      WindowPosition.midRight,
      WindowPosition.topRight,
      WindowPosition.topCenter,
    ];
  } else if (clickedItem == 2) {
    return [
      WindowPosition.topCenter,
      WindowPosition.topLeft,
      WindowPosition.largeBotLeft,
      WindowPosition.botRight,
      WindowPosition.midRight,
      WindowPosition.topRight,
    ];
  } else if (clickedItem == 3) {
    return [
      WindowPosition.topLeft,
      WindowPosition.midLeft,
      WindowPosition.botLeft,
      WindowPosition.largeBotRight,
      WindowPosition.topRight,
      WindowPosition.topCenter,
    ];
  } else if (clickedItem == 4) {
    return [
      WindowPosition.midLeft,
      WindowPosition.botLeft,
      WindowPosition.botCenter,
      WindowPosition.botRight,
      WindowPosition.largeTopRight,
      WindowPosition.topLeft,
    ];
  } else {
    // for clickedItem == 5
    return [
      WindowPosition.topLeft,
      WindowPosition.midLeft,
      WindowPosition.botLeft,
      WindowPosition.botCenter,
      WindowPosition.botRight,
      WindowPosition.largeTopRight,
    ];
  }
}
