import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/modules/wrap_chip/cubit/wrap_chip_cubit.dart';
import 'package:gallery_app/widgets/wrap_chip_widgets/wrap_chip_menu.dart';
import 'package:gallery_app/widgets/wrap_chip_widgets/wrap_chip_view.dart';

class WrapChipScreen extends StatelessWidget {
  const WrapChipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WrapChipCubit(),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Wrap view"),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
          body: const Column(
            children: [
              Expanded(child: WrapChipView()),
              WrapChipMenu(),
            ],
          ),
        ),
      ),
    );
  }
}
