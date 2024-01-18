import 'package:flutter/material.dart';

import '../utils/hieght_width.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenaralTab extends StatefulWidget {
  const GenaralTab({super.key});

  @override
  State<GenaralTab> createState() => _GenaralTabState();
}

class _GenaralTabState extends State<GenaralTab> {
  String _selectedOption = 'Yes';
  @override
  Widget build(BuildContext context) {
    final width = DynamicSizes.width(context);
    final height = DynamicSizes.height(context);
    return Scaffold(
      body: SizedBox(
        width: width,
        height: height,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 30.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "GENERAL",
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
                              child: const Text("Template Name "),
                            ),
                            SizedBox(
                                height: 35.h,
                                width: 100.w,
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
                    SizedBox(
                      width: 10.w,
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
                    SizedBox(
                      width: 10.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.h),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.h),
                              child: const Text("Report ID"),
                            ),
                            // const SizedBox(height: 10),
                            SizedBox(
                              height: 35.h,
                              width: 100.w,
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
                  ]),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "OUTPUT FORMAT",
                        style: TextStyle(
                            fontSize: 4.sp,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0),
                      ),
                      SizedBox(height: 5.h),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 10,
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Radio<String>(
                                fillColor: const MaterialStatePropertyAll(
                                    Color.fromARGB(255, 0, 0, 0)),
                                value: 'Pdf',
                                groupValue: _selectedOption,
                                onChanged: (value) {
                                  setState(() {
                                    _selectedOption = value!;
                                  });
                                },
                              ),
                              Text(
                                'Pdf',
                                style: TextStyle(
                                    color: _selectedOption == "Yes"
                                        ? Colors.black
                                        : Colors
                                            .black), // Custom color for "No"
                              ),
                              const SizedBox(width: 20),
                              Radio<String>(
                                fillColor: const MaterialStatePropertyAll(
                                    Color.fromARGB(255, 0, 0, 0)),
                                value: 'Excel',
                                groupValue: _selectedOption,
                                onChanged: (value) {
                                  setState(() {
                                    _selectedOption = value!;
                                  });
                                },
                              ),
                              Text(
                                'Excel',
                                style: TextStyle(
                                    color: _selectedOption == "No"
                                        ? Colors.teal
                                        : Colors
                                            .black), // Custom color for "No"
                              ),
                            ]),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              fixedSize: const Size(80, 15),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          onPressed: () {},
                          child: const Text(
                            "Save",
                            style: TextStyle(color: Colors.white),
                          ))
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

const List<String> list = <String>[
  'Consolidate',
  'Report',
  'processing',
  'Annual report'
];

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      width: 100.w,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(5)),
      child: Stack(
        children: [
          SizedBox(
            width: 100.w,
            child: DropdownButton<String>(
              hint: const Text("Template Type"),
              iconEnabledColor: Colors.transparent,
              underline: Container(
                height: 0,
                color: Colors.transparent,
              ),
              padding: const EdgeInsets.only(left: 10),
              value: dropdownValue,
              elevation: 0,
              itemHeight: kMinInteractiveDimension,
              // selectedItemBuilder: (context) {
              //   return List.generate(10, (index) => Text("$index"));
              // },
              // isExpanded: true,
              style: const TextStyle(color: Colors.black),
              focusNode: FocusNode(skipTraversal: true),
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
          ),
          const Positioned(
            right: 10,
            top: 5,
            child: Icon(Icons.arrow_drop_down),
          )
        ],
      ),
    );
  }
}
