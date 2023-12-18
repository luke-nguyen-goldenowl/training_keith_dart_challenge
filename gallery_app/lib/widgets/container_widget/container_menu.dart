import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/modules/container_decoration/cubit/container_cubit.dart';
import 'package:gallery_app/modules/container_decoration/model/container_color.dart';
import 'package:gallery_app/modules/container_decoration/model/container_state.dart';

class ContainerMenu extends StatelessWidget {
  const ContainerMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final containerCubit = BlocProvider.of<ContainerCubit>(context);

    return BlocBuilder<ContainerCubit, ContainerState>(
        builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Border",
                  style: TextStyle(fontSize: 18),
                ),
                Switch(
                  activeColor: Colors.blue,
                  value: state.border,
                  onChanged: (value) {
                    containerCubit.setBorder(value);
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "BorderRadius",
                  style: TextStyle(fontSize: 18),
                ),
                DropdownButton(
                  items: [0.0, 10.0, 20.0, 30.0, 40.0, 50.0].map((e) {
                    return DropdownMenuItem(
                        value: e,
                        child: Text("${e.toInt() == 0 ? "None" : e}"));
                  }).toList(),
                  value: state.borderRadius,
                  onChanged: (value) {
                    containerCubit.setBorderRadius(value);
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "BoxShadow",
                  style: TextStyle(fontSize: 18),
                ),
                Switch(
                  activeColor: Colors.blue,
                  value: state.boxShadow,
                  onChanged: (value) {
                    containerCubit.setBoxShadow(value);
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Background",
                  style: TextStyle(fontSize: 18),
                ),
                DropdownButton(
                  items: colorItems.map((e) {
                    return DropdownMenuItem(
                        value: e.color,
                        child: Text(e.name == "blue" ? "Color" : e.name));
                  }).toList(),
                  value: state.background,
                  onChanged: (value) {
                    containerCubit.setBackground(value);
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "BlendMode",
                  style: TextStyle(fontSize: 18),
                ),
                DropdownButton(
                  items: BlendMode.values.map((e) {
                    return DropdownMenuItem(value: e, child: Text(e.name));
                  }).toList(),
                  value: state.blendMode,
                  onChanged: (value) {
                    containerCubit.setBlendMode(value);
                  },
                )
              ],
            ),
          ],
        ),
      );
    });
  }
}
