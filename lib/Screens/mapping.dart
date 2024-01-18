// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MappingTab extends StatefulWidget {
  const MappingTab({super.key});

  @override
  State<MappingTab> createState() => _MappingTabState();
}

class _MappingTabState extends State<MappingTab> {
  String _selectedOption = 'Yes';

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
              Text(
                "MAPPING",
                style: TextStyle(
                    fontSize: 6.sp,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.h),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.h),
                              child: const Text("Template Name :"),
                            ),
                            SizedBox(
                                height: 35.h,
                                width: 60.w,
                                child: TextFormField(
                                  readOnly: false,
                                  style: TextStyle(fontSize: 4.0.sp),
                                  cursorColor: Colors.black,
                                  cursorWidth: 1,
                                  decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.only(top: 2.h, left: 2.w),
                                      hintText: "Template Name",
                                      disabledBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black, width: 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                      enabledBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black, width: 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                      border: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black, width: 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)))),
                                ))
                          ]),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.h),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.h),
                              child: const Text("Template Type"),
                            ),
                            const DropdownButtonExample()
                          ]),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.h),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.h),
                              child: const Text("Report ID"),
                            ),
                            SizedBox(
                              height: 35.h,
                              width: 60.w,
                              child: TextFormField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(top: 2.h, left: 2.w),
                                    hintText: "Report ID",
                                    disabledBorder: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.black,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    border: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)))),
                              ),
                            )
                          ]),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.h),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.h),
                              child: const Text("Object type"),
                            ),
                            SizedBox(
                              height: 35.h,
                              width: 60.w,
                              child: TextFormField(
                                cursorColor: Colors.black,
                                cursorWidth: 1,
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(top: 2.h, left: 2.w),
                                    hintText: "Object type",
                                    disabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    enabledBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    border: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black, width: 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)))),
                              ),
                            )
                          ]),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.h),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.h),
                              child: const Text("Lable for Input value"),
                            ),
                            const DropdownButtonExample()
                          ]),
                    ),
                  ]),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Allow Multi Select"),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 10,
                              ),
                              child: Row(
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
                                              : Colors.black),
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
                                              : Colors.black),
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
                                  ]),
                            )
                          ]),
                    ]),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Column(
                    children: [
                      Container(
                        height: 30.h,
                        color: const Color.fromARGB(255, 211, 204, 204),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 15.w,
                                child: const Center(
                                  child: Text(
                                    "Si.No",
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 25.w,
                              ),
                              SizedBox(
                                width: 45.w,
                                child: const Text(
                                  "Object Type",
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(
                                width: 45.w,
                              ),
                              const Text("Label For Input Value"),
                              SizedBox(
                                width: 45.w,
                              ),
                              const Text("Allow Multi Select"),
                              SizedBox(
                                width: 70.w,
                              ),
                              const Text("Action"),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 211, 204, 204),
                                      width: 0.5)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 15.w,
                                      child: Text(
                                        "${index + 1}",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 27.w,
                                    ),
                                    SizedBox(
                                      width: 30.w,
                                      child: const Text(
                                        "Fazil",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 60.w,
                                    ),
                                    const Text("Value"),
                                    SizedBox(
                                      width: 70.w,
                                    ),
                                    const Text("Y"),
                                    SizedBox(
                                      width: 91.w,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.delete),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}

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
      height: 35.h,
      width: 60.w,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(5)),
      child: DropdownButton<String>(
        hint: const Text("Template Type"),
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
            alignment: Alignment.centerLeft,
            value: value,
            child: Text(value),
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
