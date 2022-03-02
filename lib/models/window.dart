import 'package:equatable/equatable.dart';

class Window extends Equatable {
  const Window({
    required this.top,
    required this.left,
    required this.size,
    required this.selected,
  });

  final double top;
  final double left;
  final double size;
  final bool selected;

  Window copyWith({
    double? top,
    double? left,
    double? size,
    bool? selected,
  }) {
    return Window(
      top: top ?? this.top,
      left: left ?? this.left,
      size: size ?? this.size,
      selected: selected ?? this.selected,
    );
  }

  @override
  List<Object> get props => [
        top,
        left,
        size,
        selected,
      ];
}
