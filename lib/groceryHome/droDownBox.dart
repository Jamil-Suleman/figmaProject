import 'package:flutter/material.dart';

class MyDropdownTextBox extends StatefulWidget {
  bool isTextBoxVisible = false;
  TextEditingController textController = TextEditingController();
  @override
  _MyDropdownTextBoxState createState() => _MyDropdownTextBoxState();
}

class _MyDropdownTextBoxState extends State<MyDropdownTextBox> {
  bool isTextBoxVisible = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SingleChildScrollView(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isTextBoxVisible = !isTextBoxVisible;
              });
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                children: [
                  Text(
                    'Text on Left',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
          ),
          Visibility(
            visible: isTextBoxVisible,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Text(
                'Blank Text Box',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
