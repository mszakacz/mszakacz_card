part of 'card_bloc.dart';

abstract class CardEvent extends Equatable {
  const CardEvent();

  @override
  List<Object> get props => [];
}

class TapWindow extends CardEvent {
  const TapWindow({required this.clickedWindowIndex});
  final int clickedWindowIndex;

  @override
  List<Object> get props => [clickedWindowIndex];
}
