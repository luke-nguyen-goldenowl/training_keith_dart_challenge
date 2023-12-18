import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/modules/row_column_expanded/cubit/row_column_expanded_cubit.dart';
import 'package:gallery_app/modules/row_column_expanded/model/row_column_expanded_state.dart';
import 'package:gallery_app/widgets/row_column_expanded_widgets/item_widget.dart';
import 'package:gallery_app/widgets/row_column_expanded_widgets/row_column_menu.dart';

class RowColumnExpandedScreen extends StatelessWidget {
  const RowColumnExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RowColumnCubit(),
      child: const RowColumnPage(),
    );
  }
}

class RowColumnPage extends StatelessWidget {
  const RowColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final RowColumnCubit rowColumnCubit =
    //     BlocProvider.of<RowColumnCubit>(context);

    return BlocBuilder<RowColumnCubit, RowColumnState>(
        builder: (context, state) {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Row & Column"),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            titleTextStyle: const TextStyle(fontSize: 25),
          ),
          body: Column(
              mainAxisSize: MainAxisSize.max,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (state.type == 'Row')
                  Expanded(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.yellow,
                          child: Row(
                            mainAxisSize: state.mainAxisSize,
                            textBaseline: state.textBaseline,
                            mainAxisAlignment: state.mainAxisAlignment,
                            crossAxisAlignment: state.crossAxisAlignment,
                            verticalDirection: state.verticalDirection,
                            textDirection: state.textDirection,
                            children: [
                              const Item(size: 30),
                              // SizedBox(width: 20),
                              Item(size: 50, type: state.type),
                              // SizedBox(width: 20),
                              const Item(size: 30),
                            ],
                          )),
                    ),
                  )
                else
                  Expanded(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.yellow,
                          child: Column(
                            textBaseline: state.textBaseline,
                            textDirection: state.textDirection,
                            crossAxisAlignment: state.crossAxisAlignment,
                            mainAxisSize: state.mainAxisSize,
                            mainAxisAlignment: state.mainAxisAlignment,
                            verticalDirection: state.verticalDirection,
                            children: [
                              const Item(size: 30),
                              // SizedBox(width: 20),
                              Item(size: 50, type: state.type),
                              // SizedBox(width: 20),
                              const Item(size: 30),
                            ],
                          )),
                    ),
                  ),
                const RowColumnMenu()
              ]),
        ),
      );
    });
  }
}
