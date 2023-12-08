import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/app_cubit.dart';
import '../cubit/app_data_state_cubit.dart';
import './big_card.dart';

class GeneratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appCubit = BlocProvider.of<AppCubit>(context);

    return Center(
        child: BlocBuilder<AppCubit, AppDataState>(builder: (context, state) {
      var pair = state.current;
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: 200,
            child: ListView(
              children: [
                for (var pair in state.histories)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(state.favorites.contains(pair)
                          ? Icons.favorite
                          : null),
                      Text(
                        pair.asCamelCase,
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  )
              ],
            ),
          ),
          SizedBox(height: 10),
          BigCard(pair: pair),
          SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  appCubit.toggleFavorite();
                },
                icon: Icon(state.favorites.contains(pair)
                    ? Icons.favorite
                    : Icons.favorite_border),
                label: Text('Like'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  appCubit.getNext();
                },
                child: Text('Next'),
              ),
            ],
          ),
        ],
      );
    }));
  }
}
