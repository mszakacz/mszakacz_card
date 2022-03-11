part of 'card_bloc.dart';

class CardState extends Equatable {
  const CardState({
    required this.windows,
    required this.selected,
  });

  final List<WindowPosition> windows;
  final int selected;

  @override
  List<Object> get props => [windows, selected];

  CardState copyWith({
    List<WindowPosition>? windows,
    int? selected,
  }) {
    return CardState(
      windows: windows ?? this.windows,
      selected: selected ?? this.selected,
    );
  }
}
