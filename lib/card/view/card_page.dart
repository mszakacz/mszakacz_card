import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mszakacz_card/card/bloc/card_bloc.dart';
import 'package:mszakacz_card/card/widgets/widgets.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CardBloc(),
      child: const Scaffold(
        body: CardView(),
      ),
    );
  }
}

class CardView extends StatelessWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CardBloc, CardState>(
      builder: (context, state) {
        return Stack(
          children: [
            WindowWidget(
              window: state.windows[0],
              windowIndex: 0,
              child: const PictureWidget(),
            ),
            WindowWidget(
              window: state.windows[1],
              windowIndex: 1,
              child: state.windows[1].selected
                  ? const AnimatedNameWidget()
                  : const NameWidget(),
            ),
            WindowWidget(
              window: state.windows[2],
              windowIndex: 2,
              child: AnimatedGoalsWidget(selected: !state.windows[2].selected),
            ),
            WindowWidget(
              window: state.windows[3],
              windowIndex: 3,
              child:
                  AnimatedProjectsWidget(selected: !state.windows[3].selected),
            ),
            WindowWidget(
              window: state.windows[4],
              windowIndex: 4,
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: AnimatedLinksWidget(selected: state.windows[4].selected),
              ),
            ),
            WindowWidget(
              window: state.windows[5],
              windowIndex: 5,
              child: AnimatedHobbiesWidget(selected: state.windows[5].selected),
            ),
          ],
        );
      },
    );
  }
}
