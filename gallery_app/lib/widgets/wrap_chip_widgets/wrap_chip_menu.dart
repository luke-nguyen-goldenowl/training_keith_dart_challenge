import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/modules/wrap_chip/cubit/shape_chip_data.dart';
import 'package:gallery_app/modules/wrap_chip/cubit/wrap_chip_cubit.dart';
import 'package:gallery_app/modules/wrap_chip/model/wrap_chip_state.dart';

class WrapChipMenu extends StatelessWidget {
  const WrapChipMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final WrapChipCubit wrapChipCubit = BlocProvider.of<WrapChipCubit>(context);
    return BlocBuilder<WrapChipCubit, WrapChipState>(builder: (context, state) {
      return Container(
        padding: const EdgeInsets.all(10),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "elevation",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 13,
                        ),
                      ),
                      Switch(
                          activeColor: Colors.blue,
                          value: state.elevation,
                          onChanged: (value) {
                            wrapChipCubit.setElevation(value);
                          })
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "avatar",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 13,
                        ),
                      ),
                      Switch(
                          activeColor: Colors.blue,
                          value: state.avatar,
                          onChanged: (value) {
                            wrapChipCubit.setAvatar(value);
                          })
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "deleteIcon",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 13,
                        ),
                      ),
                      Switch(
                          activeColor: Colors.blue,
                          value: state.deleteIcon,
                          onChanged: (value) {
                            wrapChipCubit.setDeleteIcon(value);
                          })
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: DropdownButton(
                      style:
                          TextStyle(color: Colors.grey.shade700, fontSize: 13),
                      value: state.shape,
                      items: listShapeChip.map((e) {
                        return DropdownMenuItem(
                          value: e.shape,
                          child: Text(e.name),
                        );
                      }).toList(),
                      onChanged: (value) {
                        wrapChipCubit.setShape(value);
                      }),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "spacing",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 13,
                        ),
                      ),
                      Switch(
                          activeColor: Colors.blue,
                          value: state.spacing,
                          onChanged: (value) {
                            wrapChipCubit.setSpacing(value);
                          })
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "runSpacing",
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 13,
                        ),
                      ),
                      Switch(
                          activeColor: Colors.blue,
                          value: state.runSpacing,
                          onChanged: (value) {
                            wrapChipCubit.setRunSpacing(value);
                          })
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      );
    });
  }
}
