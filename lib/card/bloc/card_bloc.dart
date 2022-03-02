import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mszakacz_card/card/logic/dimensions.dart';
import 'package:mszakacz_card/constant/position.dart';
import 'package:mszakacz_card/models/window.dart';

part 'card_event.dart';
part 'card_state.dart';

class CardBloc extends Bloc<CardEvent, CardState> {
  CardBloc()
      : super(
          CardState(
            windows: [
              Window(
                position: Position.largeBotRight,
                top: botLargeWindowTop,
                left: rightLargeWindowLeft,
                size: largeWindowSize,
                selected: true,
              ),
              Window(
                position: Position.botLeft,
                top: botRowPositionTop,
                left: leftColumnPositionLeft,
                size: smallWindowSize,
                selected: false,
              ),
              Window(
                position: Position.midLeft,
                top: midRowPositionTop,
                left: leftColumnPositionLeft,
                size: smallWindowSize,
                selected: false,
              ),
              Window(
                position: Position.topLeft,
                top: topRowPositionTop,
                left: leftColumnPositionLeft,
                size: smallWindowSize,
                selected: false,
              ),
              Window(
                position: Position.topCenter,
                top: topRowPositionTop,
                left: midColumnPositionLeft,
                size: smallWindowSize,
                selected: false,
              ),
              Window(
                position: Position.topRight,
                top: topRowPositionTop,
                left: rightColumnPositionLeft,
                size: smallWindowSize,
                selected: false,
              ),
            ],
          ),
        ) {
    on<CardEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
