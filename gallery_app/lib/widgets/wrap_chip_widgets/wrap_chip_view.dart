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

class CustomChoiceChip extends StatefulWidget {
  const CustomChoiceChip({super.key, required this.content});

  final String content;

  @override
  State<CustomChoiceChip> createState() => _CustomChoiceChipState();
}

class _CustomChoiceChipState extends State<CustomChoiceChip> {
  late bool _selected;

  @override
  void initState() {
    super.initState();
    _selected = false;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WrapChipCubit, WrapChipState>(builder: (context, state) {
      return ChoiceChip(
        backgroundColor: Colors.grey[widget.content != "Disable" ? 300 : 200],
        side: BorderSide.none,
        label: Text(widget.content),
        labelStyle: TextStyle(
            color: widget.content == "Disable" ? Colors.grey[400] : null),
        elevation: state.elevation ? 20 : 0,
        avatar: state.avatar ? const Icon(Icons.account_circle) : null,
        shape: state.shape,
        shadowColor: Colors.black,
        selected: _selected,
        onSelected: widget.content == "Disable"
            ? null
            : (value) {
                setState(() {
                  _selected = value;
                });
              },
        selectedColor: Colors.grey,
        disabledColor: Colors.grey[200],
      );
    });
  }
}

class CustomInputChip extends StatefulWidget {
  const CustomInputChip({
    super.key,
    required this.content,
  });

  final String content;

  @override
  State<CustomInputChip> createState() => _CustomInputChipState();
}

class _CustomInputChipState extends State<CustomInputChip> {
  late bool _selected;

  @override
  void initState() {
    super.initState();
    _selected = false;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WrapChipCubit, WrapChipState>(builder: (context, state) {
      return InputChip(
        backgroundColor: Colors.grey[300],
        side: BorderSide.none,
        label: Text(widget.content),
        elevation: state.elevation ? 20 : 0,
        avatar: state.avatar ? const Icon(Icons.account_circle) : null,
        shape: state.shape,
        shadowColor: Colors.black,
        disabledColor: Colors.grey[200],
        selected: _selected,
        selectedColor: Colors.grey,
        onSelected: widget.content == "Disable"
            ? null
            : (value) {
                setState(() {
                  _selected = value;
                });
              },
        deleteIcon: const Icon(Icons.delete),
        onDeleted: state.deleteIcon ? () {} : null,
      );
    });
  }
}
