import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/modules/scaffold_bottomappbar_actionfloatbutton/cubit/scaffold_cubit.dart';
import 'package:gallery_app/modules/scaffold_bottomappbar_actionfloatbutton/model/scaffold_state.dart';

class ScaffoldScreen extends StatelessWidget {
  const ScaffoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ScaffoldCubit(),
      child: const ScaffoldPage(),
    );
  }
}

class ScaffoldPage extends StatelessWidget {
  const ScaffoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ScaffoldCubit scaffoldCubit = BlocProvider.of<ScaffoldCubit>(context);
    return BlocBuilder<ScaffoldCubit, ScaffoldScreenState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.grey[50],
            appBar: AppBar(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              title: const Text("Bottom App Bar View"),
            ),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Color.fromARGB(255, 240, 232, 232),
                                width: 1))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Float Action Button"),
                            Switch(
                              activeColor: Colors.blue,
                              value: state.floatActionButton,
                              onChanged: (value) {
                                scaffoldCubit.setFloatActionButton(value);
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Notch"),
                            Switch(
                              activeColor: Colors.blue,
                              value: state.notch,
                              onChanged: (value) {
                                scaffoldCubit.setNotch(value);
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Float Action Button Position",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Radio(
                          activeColor: Colors.blue,
                          value: FloatingActionButtonLocation.endDocked,
                          groupValue: state.floatingActionButtonLocation,
                          onChanged: (value) {
                            scaffoldCubit
                                .setFloatingActionButtonLocation(value);
                          }),
                      const Text("Docked - End")
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          activeColor: Colors.blue,
                          value: FloatingActionButtonLocation.centerDocked,
                          groupValue: state.floatingActionButtonLocation,
                          onChanged: (value) {
                            scaffoldCubit
                                .setFloatingActionButtonLocation(value);
                          }),
                      const Text("Docked - Center")
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          activeColor: Colors.blue,
                          value: FloatingActionButtonLocation.endFloat,
                          groupValue: state.floatingActionButtonLocation,
                          onChanged: (value) {
                            scaffoldCubit
                                .setFloatingActionButtonLocation(value);
                          }),
                      const Text("Floating - End")
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          activeColor: Colors.blue,
                          value: FloatingActionButtonLocation.centerFloat,
                          groupValue: state.floatingActionButtonLocation,
                          onChanged: (value) {
                            scaffoldCubit
                                .setFloatingActionButtonLocation(value);
                          }),
                      const Text("Floating - Center")
                    ],
                  )
                ],
              ),
            ),
            floatingActionButton: state.floatActionButton
                ? FloatingActionButton(
                    shape: const CircleBorder(),
                    backgroundColor: Colors.blue,
                    onPressed: () {},
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  )
                : null,
            floatingActionButtonLocation: state.floatingActionButtonLocation,
            bottomNavigationBar: BottomAppBar(
              // color: Colors.white,
              surfaceTintColor: Colors.white,
              shape: state.notch ? const CircularNotchedRectangle() : null,
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 50,
                child: const Row(
                  children: [
                    Icon(
                      Icons.line_weight_rounded,
                      color: Colors.black,
                      size: 30,
                    ),
                    SizedBox(width: 15),
                    Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 30,
                    ),
                    SizedBox(width: 15),
                    Icon(
                      Icons.favorite,
                      color: Colors.black,
                      size: 30,
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
