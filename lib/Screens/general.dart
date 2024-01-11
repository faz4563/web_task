import 'package:flutter/material.dart';

import '../utils/hieght_width.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenaralTab extends StatefulWidget {
  const GenaralTab({super.key});

  @override
  State<GenaralTab> createState() => _GenaralTabState();
}

class _GenaralTabState extends State<GenaralTab> {
  @override
  Widget build(BuildContext context) {
    final width = DynamicSizes.width(context);
    final height = DynamicSizes.height(context);
    return Scaffold(
      body: SizedBox(
        width: width,
        height: height,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 300.w,
                    height: 30.h,
                    child: TextFormField(
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
