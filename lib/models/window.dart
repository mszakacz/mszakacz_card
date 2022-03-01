import '../consts/position.dart';
import '../consts/dimensions.dart';

class Window {
  const Window({
    required this.position,
    required this.top,
    required this.left,
    required this.size,
  });

  final Position position;
  final double top;
  final double left;
  final double size;
}
