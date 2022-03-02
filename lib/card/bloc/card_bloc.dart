import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mszakacz_card/card/logic/click_card.dart';
import 'package:mszakacz_card/models/window.dart';

part 'card_event.dart';
part 'card_state.dart';

class CardBloc extends Bloc<CardEvent, CardState> {
  CardBloc()
      : super(
          CardState(
            windows: clickCard(0),
          ),
        ) {
    on<TapWindow>(_onCardEvent);
  }

  void _onCardEvent(TapWindow event, Emitter<CardState> emit) {
    emit(
      state.copyWith(
        windows: clickCard(event.clickedWindowIndex),
      ),
    );
  }
}
