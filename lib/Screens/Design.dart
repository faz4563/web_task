// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:web_with_flutter/utils/hieght_width.dart';

import '../services/tabAnimationService.dart';

class DesignTab extends StatefulWidget {
  const DesignTab({super.key});

  @override
  State<DesignTab> createState() => _DesignTabState();
}

class _DesignTabState extends State<DesignTab> {
  @override
  Widget build(BuildContext context) {
    final changeContext = Provider.of<TabAnimationService>(context);
    return Scaffold(
      // backgroundColor: Colors.yellow,
      appBar: null,
      body: SizedBox(
        width: DynamicSizes.width(context),
        height: DynamicSizes.height(context),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 4.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: DynamicSizes.height(context),
                      width: 40.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 10, bottom: 10),
                            child: Text(
                              "Design",
                              style: TextStyle(
                                  fontSize: 6.sp,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.0),
                            ),
                          ),
                          ListTile(
                            tileColor: changeContext.designSelectedTab == 0
                                ? Colors.green.shade200
                                : Colors.white,
                            shape: Border(
                              top: BorderSide(color: Colors.green.shade300),
                              left: BorderSide(color: Colors.green.shade400),
                              // right: BorderSide(),
                            ),
                            title: const Text(
                              "Document",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300),
                            ),
                            onTap: () {
                              setState(() {
                                changeContext.changingdesignSelectedTab(0);
                              });
                            },
                          ),
                          ListTile(
                            tileColor: changeContext.designSelectedTab == 1
                                ? Colors.green.shade200
                                : Colors.white,
                            shape: Border(
                              top: BorderSide(color: Colors.green.shade400),
                              left: BorderSide(color: Colors.green.shade400),
                              // right: BorderSide(),
                            ),
                            onTap: () {
                              setState(() {
                                changeContext.changingdesignSelectedTab(1);
                              });
                            },
                            title: const Text("Doc Border"),
                          ),
                          ListTile(
                              shape: Border(
                                top: BorderSide(color: Colors.green.shade400),
                                left: BorderSide(color: Colors.green.shade400),
                                // right: BorderSide(),
                              ),
                              title: const Text("Header"),
                              tileColor: changeContext.designSelectedTab == 2
                                  ? Colors.green.shade200
                                  : Colors.white,
                              onTap: () {
                                setState(() {
                                  changeContext.changingdesignSelectedTab(2);
                                });
                              }),
                          ListTile(
                            tileColor: changeContext.designSelectedTab == 3
                                ? Colors.green.shade200
                                : Colors.white,
                            shape: Border(
                              top: BorderSide(color: Colors.green.shade400),
                              left: BorderSide(color: Colors.green.shade400),
                              // right: BorderSide(),
                            ),
                            title: const Text("Footer"),
                            onTap: () {
                              setState(() {
                                changeContext.changingdesignSelectedTab(3);
                              });
                            },
                          ),
                          ListTile(
                            tileColor: changeContext.designSelectedTab == 4
                                ? Colors.green.shade200
                                : Colors.white,
                            shape: Border(
                                top: BorderSide(color: Colors.green.shade400),
                                left: BorderSide(color: Colors.green.shade400),
                                bottom:
                                    BorderSide(color: Colors.green.shade400)),
                            title: const Text("Page - 1"),
                            onTap: () {
                              setState(() {
                                changeContext.changingdesignSelectedTab(4);
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    changeContext.designSelectedTab == 0
                        ? const DocumentTab()
                        : Expanded(
                            child: Container(
                              // color: Colors.red,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.green.shade400)),
                              width: DynamicSizes.width(context),
                              height: DynamicSizes.height(context),
                              child: Center(
                                child: Text(
                                  "Coming Soon...",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DocumentTab extends StatefulWidget {
  const DocumentTab({super.key});

  @override
  State<DocumentTab> createState() => _DocumentTabState();
}

class _DocumentTabState extends State<DocumentTab> {
  TextEditingController widthController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController marginRightController = TextEditingController();
  TextEditingController marginLeftController = TextEditingController();
  TextEditingController marginTopController = TextEditingController();
  TextEditingController marginBottomController = TextEditingController();
  String paperSize = "A4";

  @override
  void initState() {
    widthController.text = "555.00";
    heightController.text = "333.00";
    marginRightController.text = "555.00";
    marginLeftController.text = "333.00";
    marginTopController.text = "555.00";
    marginBottomController.text = "333.00";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final changeContext = Provider.of<TabAnimationService>(context);
    var items = [
      "A4",
      "A3",
      "A5",
    ];
    return Expanded(
      child: Container(
        width: DynamicSizes.width(context),
        height: DynamicSizes.height(context),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.green.shade400)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "PRESET DETAILS",
                style: TextStyle(
                    color: Colors.green.shade800,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.8),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Text(
                "Document",
                style:
                    TextStyle(color: Colors.grey.shade800, letterSpacing: 0.8),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 6.h),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1.w),
                        border: Border.all(
                            color: const Color.fromARGB(255, 188, 182, 182))),
                    width: 50.w,
                    height: 40.h,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      child: DropdownButton(
                        value: paperSize,

                        icon: const Icon(Icons.keyboard_arrow_down),
                        underline: const SizedBox(),
                        focusColor: Colors.white,
                        dropdownColor: Colors.white,
                        // Array list of items
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: SizedBox(width: 36.w, child: Text(items)),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            paperSize = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        changeContext.changingPortraitSelected(0);
                      });
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          color: changeContext.portraitSelected == 0
                              ? const Color.fromARGB(255, 65, 77, 131)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: changeContext.portraitSelected != 0
                              ? Border.all(color: Colors.grey.shade400)
                              : null,
                        ),
                        width: 10.w,
                        height: 40.h,
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: Container(
                            width: 5,
                            height: 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(
                                    color: changeContext.portraitSelected == 0
                                        ? Colors.white
                                        : const Color.fromARGB(
                                            255, 65, 77, 131),
                                    width: 2)),
                            child: Icon(
                              Icons.person_2_outlined,
                              color: changeContext.portraitSelected == 0
                                  ? Colors.white
                                  : const Color.fromARGB(255, 65, 77, 131),
                              size: 18,
                            ),
                          ),
                        )),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        changeContext.changingPortraitSelected(1);
                      });
                    },
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Container(
                        decoration: BoxDecoration(
                            color: changeContext.portraitSelected == 1
                                ? const Color.fromARGB(255, 65, 77, 131)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: changeContext.portraitSelected != 1
                                ? Border.all(color: Colors.grey.shade400)
                                : null),
                        width: 10.w,
                        height: 40.h,
                        child: Padding(
                          padding: const EdgeInsets.all(6),
                          child: Container(
                            width: 5,
                            height: 5,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(
                                    color: changeContext.portraitSelected == 1
                                        ? Colors.white
                                        : const Color.fromARGB(
                                            255, 65, 77, 131),
                                    width: 2)),
                            child: Center(
                              child: Icon(
                                Icons.person_2_outlined,
                                color: changeContext.portraitSelected == 1
                                    ? Colors.white
                                    : const Color.fromARGB(255, 65, 77, 131),
                                size: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      "W :",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(border: Border.all()),
                    height: 40.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // height: 20,
                          decoration: const BoxDecoration(
                              border: Border(right: BorderSide(width: 1))),
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      widthController.text = (int.parse(
                                                  double.parse(
                                                          widthController.text)
                                                      .toString()) +
                                              1)
                                          .toString();
                                    });
                                  },
                                  child: const Icon(
                                    Icons.arrow_drop_up,
                                    size: 30,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      widthController.text = (int.parse(
                                                  double.parse(
                                                          widthController.text)
                                                      .toString()) -
                                              1)
                                          .toString();
                                    });
                                  },
                                  child: const Icon(
                                    Icons.arrow_drop_down,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30.w,
                          height: 50.h,
                          child: TextField(
                            enabled: true,
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.only(
                                    bottom: 10, left: 10, right: 10),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                suffix: Text(
                                  "Px",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800),
                                )),
                            controller: widthController,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text(
                      "H :",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(border: Border.all()),
                    height: 40.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              border: Border(right: BorderSide(width: 1))),
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      heightController.text = (int.parse(
                                                  double.parse(
                                                          heightController.text)
                                                      .toString()) +
                                              1)
                                          .toString();
                                    });
                                  },
                                  child: const Icon(
                                    Icons.arrow_drop_up,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      heightController.text = (int.parse(
                                                  double.parse(
                                                          heightController.text)
                                                      .toString()) -
                                              1)
                                          .toString();
                                    });
                                  },
                                  child: const Icon(
                                    Icons.arrow_drop_down,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30.w,
                          height: 50.h,
                          child: TextField(
                            enabled: true,
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.only(
                                    bottom: 10, left: 10, right: 10),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                suffix: Text(
                                  "Px",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800),
                                )),
                            controller: heightController,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 10.h),
              child: Text(
                "Margins",
                style:
                    TextStyle(color: Colors.grey.shade800, letterSpacing: 0.8),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 5.h),
              child: Row(
                children: [
                  SizedBox(
                    child: Column(
                      children: [
                        SizedBox(
                          child: Row(
                            children: [
                              Column(children: [
                                Container(
                                  width: 30,
                                  height: 10,
                                  color: const Color.fromARGB(255, 65, 77, 131),
                                  child: null,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color.fromARGB(
                                              255, 188, 181, 181),
                                          width: 2)),
                                  child: null,
                                ),
                              ]),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(border: Border.all()),
                                height: 40.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                          border: Border(
                                              right: BorderSide(width: 1))),
                                      child: FittedBox(
                                        fit: BoxFit.cover,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  marginTopController.text =
                                                      (int.parse(double.parse(
                                                                      marginTopController
                                                                          .text)
                                                                  .toString()) +
                                                              1)
                                                          .toString();
                                                });
                                              },
                                              child: const Icon(
                                                Icons.arrow_drop_up,
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  marginTopController.text =
                                                      (int.parse(double.parse(
                                                                      marginTopController
                                                                          .text)
                                                                  .toString()) -
                                                              1)
                                                          .toString();
                                                });
                                              },
                                              child: const Icon(
                                                Icons.arrow_drop_down,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30.w,
                                      height: 50.h,
                                      child: TextField(
                                        enabled: true,
                                        decoration: const InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                bottom: 10,
                                                left: 10,
                                                right: 10),
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide.none),
                                            suffix: Text(
                                              "Px",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w800),
                                            )),
                                        controller: marginTopController,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          child: Row(
                            children: [
                              Column(children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color.fromARGB(
                                              255, 188, 181, 181),
                                          width: 2)),
                                  child: null,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: 30,
                                  height: 10,
                                  color: const Color.fromARGB(255, 65, 77, 131),
                                  child: null,
                                ),
                              ]),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(border: Border.all()),
                                height: 40.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                          border: Border(
                                              right: BorderSide(width: 1))),
                                      child: FittedBox(
                                        fit: BoxFit.cover,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  marginBottomController.text =
                                                      (int.parse(double.parse(
                                                                      marginBottomController
                                                                          .text)
                                                                  .toString()) +
                                                              1)
                                                          .toString();
                                                });
                                              },
                                              child: const Icon(
                                                Icons.arrow_drop_up,
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  marginBottomController.text =
                                                      (int.parse(double.parse(
                                                                      marginBottomController
                                                                          .text)
                                                                  .toString()) -
                                                              1)
                                                          .toString();
                                                });
                                              },
                                              child: const Icon(
                                                Icons.arrow_drop_down,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30.w,
                                      height: 50.h,
                                      child: TextField(
                                        enabled: true,
                                        decoration: const InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                bottom: 10,
                                                left: 10,
                                                right: 10),
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide.none),
                                            suffix: Text(
                                              "Px",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w800),
                                            )),
                                        controller: marginBottomController,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Container(
                      color: const Color.fromARGB(255, 65, 77, 131),
                      width: 12.w,
                      height: 50.h,
                      child: const Center(
                          child: RotatedBox(
                        quarterTurns: 3,
                        child: Icon(
                          Icons.link,
                          color: Colors.white,
                        ),
                      )),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            Row(children: [
                              Container(
                                height: 30,
                                width: 10,
                                color: const Color.fromARGB(255, 65, 77, 131),
                                child: null,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 188, 181, 181),
                                        width: 2)),
                                child: null,
                              ),
                            ]),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(border: Border.all()),
                              height: 40.h,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            right: BorderSide(width: 1))),
                                    child: FittedBox(
                                      fit: BoxFit.cover,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                marginBottomController.text =
                                                    (int.parse(double.parse(
                                                                    marginBottomController
                                                                        .text)
                                                                .toString()) +
                                                            1)
                                                        .toString();
                                              });
                                            },
                                            child: const Icon(
                                              Icons.arrow_drop_up,
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                marginBottomController.text =
                                                    (int.parse(double.parse(
                                                                    marginBottomController
                                                                        .text)
                                                                .toString()) -
                                                            1)
                                                        .toString();
                                              });
                                            },
                                            child: const Icon(
                                              Icons.arrow_drop_down,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30.w,
                                    height: 50.h,
                                    child: TextField(
                                      enabled: true,
                                      decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.only(
                                              bottom: 10, left: 10, right: 10),
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide.none),
                                          suffix: Text(
                                            "Px",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w800),
                                          )),
                                      controller: marginBottomController,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 35.h,
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 188, 181, 181),
                                      width: 2)),
                              child: null,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 30,
                              width: 10,
                              color: const Color.fromARGB(255, 65, 77, 131),
                              child: null,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(border: Border.all()),
                              height: 40.h,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            right: BorderSide(width: 1))),
                                    child: FittedBox(
                                      fit: BoxFit.cover,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                marginBottomController.text =
                                                    (int.parse(double.parse(
                                                                    marginBottomController
                                                                        .text)
                                                                .toString()) +
                                                            1)
                                                        .toString();
                                              });
                                            },
                                            child: const Icon(
                                              Icons.arrow_drop_up,
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                marginBottomController.text =
                                                    (int.parse(double.parse(
                                                                    marginBottomController
                                                                        .text)
                                                                .toString()) -
                                                            1)
                                                        .toString();
                                              });
                                            },
                                            child: const Icon(
                                              Icons.arrow_drop_down,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30.w,
                                    height: 50.h,
                                    child: TextField(
                                      enabled: true,
                                      decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.only(
                                              bottom: 10, left: 10, right: 10),
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide.none),
                                          suffix: Text(
                                            "Px",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w800),
                                          )),
                                      controller: marginBottomController,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      fixedSize: const Size(100, 30)),
                  onPressed: () {},
                  child: const Text(
                    "Create",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
