import 'package:flutter/material.dart';

class DropDownHelper extends StatefulWidget {
  const DropDownHelper({super.key});

  @override
  State<DropDownHelper> createState() => _DropDownHelperState();
}

class _DropDownHelperState extends State<DropDownHelper> {
  List dropDownListData = [
    {"title": "Level 1", "value": "1"},
    {"title": "Level 2", "value": "2"},
    {"title": "Level 3", "value": "3"},
    {"title": "Level 4", "value": "4"},
    {"title": "Level 5", "value": "5"},
    {"title": "Level 6", "value": "6"},
    {"title": "Level 7", "value": "7"},
    {"title": "Level 8", "value": "8"},
    {"title": "Level 9", "value": "9"},
    {"title": "Level 10", "value": "10"},
    {"title": "Level 11", "value": "11"},
    {"title": "Level 12", "value": "12"},
    {"title": "Level 13", "value": "13"},
    {"title": "Level 14", "value": "14"},
    {"title": "Level 15", "value": "15"},
    {"title": "Level 16", "value": "16"},
    {"title": "Level 17", "value": "17"},
    {"title": "Level 18", "value": "18"},
    {"title": "Level 19", "value": "19"},
    {"title": "Level 20", "value": "20"},
  ];

  String selectedLevelValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Dropdown'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InputDecorator(
              expands: true,
              decoration: InputDecoration(


                filled: true,
                fillColor: Colors.lightGreen.shade100,

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none
                ),

                contentPadding: const EdgeInsets.all(12.0),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  value: selectedLevelValue,
                  isDense: true, // compact dropdown
                  // isExpanded ensure the width of the dropdown is equal to the width of the screen
                  isExpanded: true,
                  menuMaxHeight: 300,
                  items: [
                    const DropdownMenuItem(
                      value: "",
                      child: Text(
                        "Select Level",
                      ),
                    ),
                    ...dropDownListData.map<DropdownMenuItem<String>>((e) {
                      return DropdownMenuItem(value: e['value'], child: Text(e['title']));
                    }).toList(),
                  ],
                  onChanged: (newValue) {
                    setState(() {
                      selectedLevelValue = newValue!;
                      print(selectedLevelValue);
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
