import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/modules/wrap_chip/cubit/wrap_chip_cubit.dart';
import 'package:gallery_app/modules/wrap_chip/model/wrap_chip_state.dart';

class WrapChipView extends StatelessWidget {
  const WrapChipView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WrapChipCubit, WrapChipState>(builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Chip Chip",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: state.spacing ? 30 : 0,
              runSpacing: state.runSpacing ? 30 : 0,
              children: const [
                CustomChip(
                  content: "Chip",
                ),
                CustomChip(
                  content: "ActionChip",
                ),
                CustomChip(
                  content: "RawChip",
                )
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Choice Chip",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: state.spacing ? 30 : 0,
              runSpacing: state.runSpacing ? 30 : 0,
              children: const [
                CustomChoiceChip(
                  content: "Disable",
                ),
                CustomChoiceChip(
                  content: "Small",
                ),
                CustomChoiceChip(
                  content: "Large",
                )
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Input Chip",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: state.spacing ? 30 : 0,
              runSpacing: state.runSpacing ? 30 : 0,
              children: const [
                CustomInputChip(
                  content: "Disable",
                ),
                CustomInputChip(
                  content: "IOS",
                ),
                CustomInputChip(
                  content: "Android",
                )
              ],
            )
          ],
        ),
      );
    });
  }
}

class CustomChip extends StatelessWidget {
  const CustomChip({super.key, required this.content});

  final String content;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WrapChipCubit, WrapChipState>(builder: (context, state) {
      return Chip(
        backgroundColor: Colors.grey[300],
        side: BorderSide.none,
        label: Text(content),
        elevation: state.elevation ? 20 : 0,
        shadowColor: Colors.black,
        avatar: state.avatar ? const Icon(Icons.account_circle) : null,
        deleteIcon: const Icon(Icons.delete),
        onDeleted: state.deleteIcon ? () {} : null,
        shape: state.shape,
      );
    });
  }
}

class CustomChoiceChip extends StatelessWidget {
  const CustomChoiceChip({super.key, required this.content});

  final String content;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WrapChipCubit, WrapChipState>(builder: (context, state) {
      final WrapChipCubit wrapChipCubit =
          BlocProvider.of<WrapChipCubit>(context);
      return ChoiceChip(
        backgroundColor: Colors.grey[content != "Disable" ? 300 : 200],
        side: BorderSide.none,
        label: Text(content),
        labelStyle:
            TextStyle(color: content == "Disable" ? Colors.grey[400] : null),
        elevation: state.elevation ? 20 : 0,
        avatar: state.avatar ? const Icon(Icons.account_circle) : null,
        shape: state.shape,
        shadowColor: Colors.black,
        selected: state.activeChoice == content,
        onSelected: content == "Disable"
            ? null
            : (value) {
                wrapChipCubit.setActiveChoice(
                    !value && state.activeChoice == content ? "" : content);
              },
        selectedColor: Colors.grey,
        disabledColor: Colors.grey[200],
      );
    });
  }
}

class CustomInputChip extends StatelessWidget {
  const CustomInputChip({
    super.key,
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WrapChipCubit, WrapChipState>(builder: (context, state) {
      final WrapChipCubit wrapChipCubit =
          BlocProvider.of<WrapChipCubit>(context);
      return InputChip(
        backgroundColor: Colors.grey[300],
        side: BorderSide.none,
        label: Text(content),
        elevation: state.elevation ? 20 : 0,
        avatar: state.avatar ? const Icon(Icons.account_circle) : null,
        shape: state.shape,
        shadowColor: Colors.black,
        disabledColor: Colors.grey[200],
        selected: state.activeInput == content,
        selectedColor: Colors.grey,
        onSelected: content == "Disable"
            ? null
            : (value) {
                wrapChipCubit.setActiveInput(
                    !value && state.activeInput == content ? "" : content);
              },
        deleteIcon: const Icon(Icons.delete),
        onDeleted: state.deleteIcon ? () {} : null,
      );
    });
  }
}
