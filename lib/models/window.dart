import 'package:equatable/equatable.dart';
import 'package:mszakacz_card/constant/position.dart';

class Window extends Equatable {
  const Window({
    required this.position,
    required this.top,
    required this.left,
    required this.size,
    required this.selected,
  });

  final Position position;
  final double top;
  final double left;
  final double size;
  final bool selected;

  Window copyWith({
    Position? position,
    double? top,
    double? left,
    double? size,
    bool? selected,
  }) {
    return Window(
      position: position ?? this.position,
      top: top ?? this.top,
      left: left ?? this.left,
      size: size ?? this.size,
      selected: selected ?? this.selected,
    );
  }

  @override
  List<Object> get props => [
        position,
        top,
        left,
        size,
        selected,
      ];
}
