import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/modules/row_column_expanded/cubit/row_column_expanded_cubit.dart';
import 'package:gallery_app/modules/row_column_expanded/model/row_column_expanded_state.dart';

class RowColumnMenu extends StatelessWidget {
  const RowColumnMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final RowColumnCubit rowColumnCubit =
        BlocProvider.of<RowColumnCubit>(context);
    return BlocBuilder<RowColumnCubit, RowColumnState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(10),
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Radio(
                        activeColor: Colors.blue,
                        value: "Row",
                        groupValue: state.type,
                        onChanged: (value) {
                          rowColumnCubit.setType(value.toString());
                        },
                      ),
                      const Text("Row")
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        activeColor: Colors.blue,
                        value: "Column",
                        groupValue: state.type,
                        onChanged: (value) {
                          rowColumnCubit.setType(value.toString());
                        },
                      ),
                      const Text("Column")
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "mainAxisSize",
                    style: TextStyle(fontSize: 18),
                  ),
                  DropdownButton(
                    value: state.mainAxisSize,
                    items: [MainAxisSize.max, MainAxisSize.min].map((value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value.toString().split('.')[1]),
                      );
                    }).toList(),
                    onChanged: (value) {
                      rowColumnCubit.setMainAxisSize(value);
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "mainAxisAlignment",
                    style: TextStyle(fontSize: 18),
                  ),
                  DropdownButton(
                    value: state.mainAxisAlignment,
                    items: [
                      MainAxisAlignment.center,
                      MainAxisAlignment.end,
                      MainAxisAlignment.start,
                      MainAxisAlignment.spaceAround,
                      MainAxisAlignment.spaceBetween,
                      MainAxisAlignment.spaceEvenly
                    ].map((value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value.toString().split('.')[1]),
                      );
                    }).toList(),
                    onChanged: (value) {
                      rowColumnCubit.setMainAxisAlignment(value);
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "crossAxisAlignment",
                    style: TextStyle(fontSize: 18),
                  ),
                  DropdownButton(
                    value: state.crossAxisAlignment,
                    items: [
                      CrossAxisAlignment.center,
                      CrossAxisAlignment.baseline,
                      CrossAxisAlignment.end,
                      CrossAxisAlignment.start,
                      CrossAxisAlignment.stretch
                    ].map((value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value.toString().split('.')[1]),
                      );
                    }).toList(),
                    onChanged: (value) {
                      rowColumnCubit.setCrossAxisAlignment(value);
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "verticalDirection",
                    style: TextStyle(fontSize: 18),
                  ),
                  DropdownButton(
                    value: state.verticalDirection,
                    items: [VerticalDirection.down, VerticalDirection.up]
                        .map((value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value.toString().split('.')[1]),
                      );
                    }).toList(),
                    onChanged: (value) {
                      rowColumnCubit.setVerticalDirection(value);
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "textDirection",
                    style: TextStyle(fontSize: 18),
                  ),
                  DropdownButton(
                    value: state.textDirection,
                    items: [TextDirection.ltr, TextDirection.rtl].map((value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value.toString().split('.')[1]),
                      );
                    }).toList(),
                    onChanged: (value) {
                      rowColumnCubit.setTextDirection(value);
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "textBaseline",
                    style: TextStyle(fontSize: 18),
                  ),
                  DropdownButton(
                    value: state.textBaseline,
                    items: [TextBaseline.ideographic, TextBaseline.alphabetic]
                        .map((value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value.toString().split('.')[1]),
                      );
                    }).toList(),
                    onChanged: (value) {
                      rowColumnCubit.setTextBaseline(value);
                    },
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
