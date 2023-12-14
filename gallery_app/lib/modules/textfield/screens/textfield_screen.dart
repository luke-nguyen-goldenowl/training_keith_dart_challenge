import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  bool _hint = true,
      _label = true,
      _help = false,
      _error = true,
      _counter = false,
      _prefix = false,
      _suffix = false,
      _prefixIcon = false;
  @override
  Widget build(BuildContext context) {
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
                            value: _hint,
                            onChanged: (value) {
                              setState(() {
                                _hint = value;
                              });
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
                            value: _label,
                            onChanged: (value) {
                              setState(() {
                                _label = value;
                              });
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
                            value: _help,
                            onChanged: (value) {
                              setState(() {
                                _help = value;
                              });
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
                            value: _error,
                            onChanged: (value) {
                              setState(() {
                                _error = value;
                              });
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
                            value: _counter,
                            onChanged: (value) {
                              setState(() {
                                _counter = value;
                              });
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
                            value: _prefix,
                            onChanged: (value) {
                              setState(() {
                                _prefix = value;
                              });
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
                            value: _suffix,
                            onChanged: (value) {
                              setState(() {
                                _suffix = value;
                              });
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
                            value: _prefixIcon,
                            onChanged: (value) {
                              setState(() {
                                _prefixIcon = value;
                              });
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
                      hintText: _hint ? "Hint Text" : null,
                      helperText: _help ? "Help Text" : null,
                      errorText: _error ? "Error Text" : null,
                      counterText: _counter ? "Counter Text" : null,
                      labelText: _label ? "Label Text" : null,
                      prefix: _prefix ? const Icon(Icons.account_circle) : null,
                      suffix: _suffix ? const Icon(Icons.account_circle) : null,
                      prefixIcon:
                          _prefixIcon ? const Icon(Icons.account_circle) : null,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: _hint ? "Hint Text" : null,
                      helperText: _help ? "Help Text" : null,
                      errorText: _error ? "Error Text" : null,
                      counterText: _counter ? "Counter Text" : null,
                      labelText: _label ? "Label Text" : null,
                      prefix: _prefix ? const Icon(Icons.account_circle) : null,
                      suffix: _suffix ? const Icon(Icons.account_circle) : null,
                      prefixIcon:
                          _prefixIcon ? const Icon(Icons.account_circle) : null,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
