import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:mszakacz_card/card/bloc/card_bloc.dart';
import 'package:mszakacz_card/card/widgets/window_widget.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CardBloc(),
      child: const CardView(),
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
              child: Container(
                color: Colors.blue,
                child: const Center(
                  child: Text('1'),
                ),
              ),
            ),
            WindowWidget(
              window: state.windows[1],
              child: Container(
                color: Colors.yellow,
                child: const Center(
                  child: Text('2'),
                ),
              ),
            ),
            WindowWidget(
              window: state.windows[2],
              child: Container(
                color: Colors.green,
                child: const Center(
                  child: Text('3'),
                ),
              ),
            ),
            WindowWidget(
              window: state.windows[3],
              child: Container(
                color: Colors.indigo,
                child: const Center(
                  child: Text('4'),
                ),
              ),
            ),
            WindowWidget(
              window: state.windows[4],
              child: Container(
                color: Colors.grey,
                child: const Center(
                  child: Text('5'),
                ),
              ),
            ),
            WindowWidget(
              window: state.windows[5],
              child: Container(
                color: Colors.pink,
                child: const Center(
                  child: Text('6'),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
