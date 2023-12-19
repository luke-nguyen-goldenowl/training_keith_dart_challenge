import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/modules/textfield/cubit/text_field_cubit.dart';
import 'package:gallery_app/modules/textfield/model/text_field_state.dart';

class TextFieldScreen extends StatelessWidget {
  const TextFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TextFieldCubit(),
      child: const TextFieldPage(),
    );
  }
}

class TextFieldPage extends StatelessWidget {
  const TextFieldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TextFieldCubit, TextFieldState>(
      builder: (context, state) {
        final TextFieldCubit textFieldCubit =
            BlocProvider.of<TextFieldCubit>(context);
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.grey[50],
            appBar: AppBar(
              title: const Text("Form View"),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            body: Column(
              children: [
                Expanded(
                    child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Hint Text",
                              style: TextStyle(fontSize: 18),
                            ),
                            Switch(
                                activeColor: Colors.blue,
                                value: state.hint,
                                onChanged: (value) {
                                  textFieldCubit.setHint(value);
                                }),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Label Text",
                              style: TextStyle(fontSize: 18),
                            ),
                            Switch(
                                activeColor: Colors.blue,
                                value: state.label,
                                onChanged: (value) {
                                  textFieldCubit.setLabel(value);
                                })
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Help Text",
                              style: TextStyle(fontSize: 18),
                            ),
                            Switch(
                                activeColor: Colors.blue,
                                value: state.help,
                                onChanged: (value) {
                                  textFieldCubit.setHelp(value);
                                })
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Error Text",
                              style: TextStyle(fontSize: 18),
                            ),
                            Switch(
                                activeColor: Colors.blue,
                                value: state.error,
                                onChanged: (value) {
                                  textFieldCubit.setError(value);
                                })
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Counter Text",
                              style: TextStyle(fontSize: 18),
                            ),
                            Switch(
                                activeColor: Colors.blue,
                                value: state.counter,
                                onChanged: (value) {
                                  textFieldCubit.setCounter(value);
                                })
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Prefix",
                              style: TextStyle(fontSize: 18),
                            ),
                            Switch(
                                activeColor: Colors.blue,
                                value: state.prefix,
                                onChanged: (value) {
                                  textFieldCubit.setPrefix(value);
                                })
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Suffix",
                              style: TextStyle(fontSize: 18),
                            ),
                            Switch(
                                activeColor: Colors.blue,
                                value: state.suffix,
                                onChanged: (value) {
                                  textFieldCubit.setSuffix(value);
                                })
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Prefix Icon",
                              style: TextStyle(fontSize: 18),
                            ),
                            Switch(
                                activeColor: Colors.blue,
                                value: state.prefixIcon,
                                onChanged: (value) {
                                  textFieldCubit.setPrefixIcon(value);
                                })
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
                Container(
                  padding: const EdgeInsets.all(15),
                  color: Colors.white,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: state.hint ? "Hint Text" : null,
                          helperText: state.help ? "Help Text" : null,
                          errorText: state.error ? "Error Text" : null,
                          counterText: state.counter ? "Counter Text" : null,
                          labelText: state.label ? "Label Text" : null,
                          prefix: state.prefix
                              ? const Icon(Icons.account_circle)
                              : null,
                          suffix: state.suffix
                              ? const Icon(Icons.account_circle)
                              : null,
                          prefixIcon: state.prefixIcon
                              ? const Icon(Icons.account_circle)
                              : null,
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          hintText: state.hint ? "Hint Text" : null,
                          helperText: state.help ? "Help Text" : null,
                          errorText: state.error ? "Error Text" : null,
                          counterText: state.counter ? "Counter Text" : null,
                          labelText: state.label ? "Label Text" : null,
                          prefix: state.prefix
                              ? const Icon(Icons.account_circle)
                              : null,
                          suffix: state.suffix
                              ? const Icon(Icons.account_circle)
                              : null,
                          prefixIcon: state.prefixIcon
                              ? const Icon(Icons.account_circle)
                              : null,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
