import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/modules/stack_align/cubit/stack_align_cubit.dart';
import 'package:gallery_app/widgets/stack_align_widget/stack_align_menu.dart';
import 'package:gallery_app/widgets/stack_align_widget/stack_view.dart';

class StackAlignScreen extends StatelessWidget {
  const StackAlignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StackAlignCubit(),
      child: const StackAlignPage(),
    );
  }
}

class StackAlignPage extends StatelessWidget {
  const StackAlignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          title: const Text("Stack & Align"),
        ),
        body: const Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StackView(),
            StackAlignMenu(),
          ],
        ),
      ),
    );
  }
}
