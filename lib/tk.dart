import 'package:flutter/material.dart';

class MyHomePagee extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePagee> {
  String _selectedOption1 = 'Option 1';
  String _selectedOption2 = 'Option A';

  List<String> _options1 = ['Option 1', 'Option 2', 'Option 3'];
  List<String> _options2 = ['Option A', 'Option B', 'Option C'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Menu Example'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DropdownButton<String>(
              value: _selectedOption1,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedOption1 = newValue!;
                });
              },
              items: _options1.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            DropdownButton<String>(
              value: _selectedOption2,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedOption2 = newValue!;
                });
              },
              items: _options2.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
