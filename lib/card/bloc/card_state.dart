part of 'card_bloc.dart';

class CardState extends Equatable {
  const CardState({
    required this.windows,
  });

  final List<Window> windows;

  @override
  List<Object> get props => [windows];

  CardState copyWith({
    List<Window>? windows,
  }) {
    return CardState(
      windows: windows ?? this.windows,
    );
  }
}
