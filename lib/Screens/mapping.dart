import 'package:flutter/material.dart';

class MappingTab extends StatefulWidget {
  const MappingTab({super.key});

  @override
  State<MappingTab> createState() => _MappingTabState();
}

class _MappingTabState extends State<MappingTab> {
  String _selectedOption = 'Yes';
  List<tableData> tablecontent = [
    tableData("Deena", "10", "Y"),
    tableData("Fazil   ", "8", "  Y"),
    tableData("Kavi   ", "16", "N")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Template Name"),
                          SizedBox(height: 10),
                          SizedBox(
                            height: 30,
                            width: 260,
                            child: TextField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                disabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                              ),
                            ),
                          )
                        ]),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Template Type"),
                          SizedBox(height: 10),
                          DropdownButtonExample()
                        ]),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Report ID"),
                          SizedBox(height: 10),
                          SizedBox(
                            height: 30,
                            width: 260,
                            child: TextField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                disabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                              ),
                            ),
                          )
                        ]),
                  ]),
              const SizedBox(height: 50),
              const Text("SET INPUT OPTION",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
              const SizedBox(height: 10),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Object type"),
                          SizedBox(height: 10),
                          SizedBox(
                            height: 30,
                            width: 260,
                            child: TextField(
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                disabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                              ),
                            ),
                          )
                        ]),
                    const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Lable for Input value"),
                          SizedBox(height: 10),
                          DropdownButtonExample()
                        ]),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Allow Multi Select"),
                          const SizedBox(height: 10),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Radio<String>(
                                  fillColor: const MaterialStatePropertyAll(
                                      Colors.teal),
                                  value: 'Yes',
                                  groupValue: _selectedOption,
                                  onChanged: (value) {
                                    setState(() {
                                      _selectedOption = value!;
                                    });
                                  },
                                ),
                                Text(
                                  'Yes',
                                  style: TextStyle(
                                      color: _selectedOption == "Yes"
                                          ? Colors.teal
                                          : Colors
                                              .black), // Custom color for "No"
                                ),
                                const SizedBox(width: 20),
                                Radio<String>(
                                  fillColor: const MaterialStatePropertyAll(
                                      Colors.teal),
                                  value: 'No',
                                  groupValue: _selectedOption,
                                  onChanged: (value) {
                                    setState(() {
                                      _selectedOption = value!;
                                    });
                                  },
                                ),
                                Text(
                                  'No',
                                  style: TextStyle(
                                      color: _selectedOption == "No"
                                          ? Colors.teal
                                          : Colors
                                              .black), // Custom color for "No"
                                ),
                                const SizedBox(width: 60),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.black,
                                        fixedSize: const Size(80, 15),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8))),
                                    onPressed: () {},
                                    child: const Text(
                                      "Add",
                                      style: TextStyle(color: Colors.white),
                                    ))
                              ])
                        ]),
                  ]),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                height: 30,
                color: Colors.grey.shade200,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("S.No",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w700)),
                    SizedBox(width: 50),
                    Text("Object Type",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w700)),
                    SizedBox(width: 90),
                    Text("Lable for Input Value",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w700)),
                    SizedBox(width: 40),
                    Text("Allow Multi Select",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w700)),
                    SizedBox(width: 60),
                    Text("Action",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w700)),
                  ],
                ),
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                    itemCount: tablecontent.length,
                    itemBuilder: (context, index) => Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          width: double.infinity,
                          height: 30,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.03, color: Colors.black)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("${index + 1}",
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700)),
                              const SizedBox(width: 165),
                              Text(tablecontent[index].name,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700)),
                              const SizedBox(width: 260),
                              Text(tablecontent[index].value,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700)),
                              const SizedBox(width: 230),
                              Text(tablecontent[index].status,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700)),
                              const SizedBox(width: 210),
                              const Icon(
                                Icons.delete,
                                color: Colors.red,
                                size: 15,
                              )
                            ],
                          ),
                        )),
              )
            ]),
      ),
    );
  }
}

/// Flutter code sample for [DropdownButton].

const List<String> list = <String>[
  'Consolidate',
  'Report',
  'processing',
  'Annual report'
];

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 260,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(5)),
      child: DropdownButton<String>(
        iconEnabledColor: Colors.transparent,
        iconDisabledColor: Colors.transparent,
        underline: Container(
          height: 0,
          color: Colors.transparent,
        ),
        padding: const EdgeInsets.only(left: 10),
        value: dropdownValue,
        elevation: 0,
        style: const TextStyle(color: Colors.black),
        onChanged: (String? value) {
          setState(() {
            dropdownValue = value!;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Center(child: Text(value)),
          );
        }).toList(),
      ),
    );
  }
}

class tableData {
  late String name;
  late String value;
  late String status;

  tableData(this.name, this.value, this.status);
}
