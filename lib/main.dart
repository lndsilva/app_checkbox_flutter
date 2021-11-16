import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checkboxes Demo',
      debugShowCheckedModeBanner: false,
      home: CheckboxesDemo(),
    );
  }
}

class CheckboxesDemo extends StatefulWidget {
  @override
  _CheckboxesDemoState createState() => _CheckboxesDemoState();
}

class _CheckboxesDemoState extends State<CheckboxesDemo> {
  List<bool> checked = [true, false, false, true];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkboxes Demo'),
      ),
      body: Container(
        child: Column(
          children: [
            for (var i = 0; i < 5; i += 1)
              Row(
                children: [
                  Checkbox(
                      value: value, onChanged: i == 4 ? null : (bool value) {})
                ],
              ),
          ],
        ),
      ),
    );
  }
}
