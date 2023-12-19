import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/modules/stack_align/cubit/stack_align_cubit.dart';
import 'package:gallery_app/modules/stack_align/model/stack_align_state.dart';

class StackAlignMenu extends StatelessWidget {
  const StackAlignMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final stackAlignCubit = BlocProvider.of<StackAlignCubit>(context);
    return BlocBuilder<StackAlignCubit, StackAlginState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Alignment",
                    style: TextStyle(fontSize: 18),
                  ),
                  DropdownButton(
                      value: state.alignment,
                      items: [
                        Alignment.bottomCenter,
                        Alignment.bottomLeft,
                        Alignment.bottomRight,
                        Alignment.center,
                        Alignment.centerLeft,
                        Alignment.centerRight,
                        Alignment.topCenter,
                        Alignment.topLeft,
                        Alignment.topRight
                      ].map((e) {
                        return DropdownMenuItem(
                          value: e,
                          child: Text(e.toString().split(".")[1]),
                        );
                      }).toList(),
                      onChanged: (value) {
                        stackAlignCubit.setAlignment(value);
                      })
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "TextDirection",
                    style: TextStyle(fontSize: 18),
                  ),
                  DropdownButton(
                      value: state.textDirection,
                      items: TextDirection.values.map((e) {
                        return DropdownMenuItem(
                          value: e,
                          child: Text(e.toString().split(".")[1]),
                        );
                      }).toList(),
                      onChanged: (value) {
                        stackAlignCubit.setTextDirection(value);
                      })
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "StackFit",
                    style: TextStyle(fontSize: 18),
                  ),
                  DropdownButton(
                      value: state.stackFit,
                      items: StackFit.values.map((e) {
                        return DropdownMenuItem(
                          value: e,
                          child: Text(e.toString().split(".")[1]),
                        );
                      }).toList(),
                      onChanged: (value) {
                        stackAlignCubit.setStackFit(value);
                      })
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Clip",
                    style: TextStyle(fontSize: 18),
                  ),
                  DropdownButton(
                      value: state.clip,
                      items: Clip.values.map((e) {
                        return DropdownMenuItem(
                          value: e,
                          child: Text(e.toString().split(".")[1]),
                        );
                      }).toList(),
                      onChanged: (value) {
                        stackAlignCubit.setClip(value);
                      })
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
