import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/modules/container_decoration/cubit/container_cubit.dart';
import 'package:gallery_app/widgets/container_widget/container_menu.dart';
import 'package:gallery_app/widgets/container_widget/container_view.dart';

class ContainerDecorationScreen extends StatelessWidget {
  const ContainerDecorationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContainerCubit(),
      child: const ContainerDecorationPage(),
    );
  }
}

class ContainerDecorationPage extends StatelessWidget {
  const ContainerDecorationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: const Text("Container View"),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                color: Colors.grey[100],
                child: const Center(child: ContainerView()),
              ),
            ),
            const ContainerMenu()
          ],
        ),
      ),
    );
  }
}
