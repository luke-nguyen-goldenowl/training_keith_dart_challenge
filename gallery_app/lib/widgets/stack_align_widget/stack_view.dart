import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/modules/stack_align/cubit/stack_align_cubit.dart';
import 'package:gallery_app/modules/stack_align/model/stack_align_state.dart';

class StackView extends StatelessWidget {
  const StackView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StackAlignCubit, StackAlginState>(
        builder: (context, state) {
      return Expanded(
        child: Stack(
          alignment: state.alignment,
          textDirection: state.textDirection,
          fit: state.stackFit,
          clipBehavior: state.clip,
          children: [
            Container(
              height: 250,
              width: 250,
              color: Colors.blue,
            ),
            Container(
              height: 180,
              width: 180,
              color: Colors.green,
            ),
            Container(
              height: 120,
              width: 120,
              color: Colors.orange,
            ),
          ],
        ),
      );
    });
  }
}
