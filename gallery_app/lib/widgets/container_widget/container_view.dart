import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/modules/container_decoration/cubit/container_cubit.dart';
import 'package:gallery_app/modules/container_decoration/model/container_state.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContainerCubit, ContainerState>(
        builder: (context, state) {
      return Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: state.background,
          borderRadius: BorderRadius.circular(state.borderRadius),
          backgroundBlendMode: state.blendMode,
          border:
              state.border ? Border.all(color: Colors.black, width: 2.0) : null,
          boxShadow: state.boxShadow
              ? [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8),
                    spreadRadius: 10,
                    blurRadius: 20,
                  )
                ]
              : null,
        ),
      );
    });
  }
}
