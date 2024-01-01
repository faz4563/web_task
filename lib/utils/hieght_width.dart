import 'package:flutter/material.dart';

class DynamicSizes {
  static width(context) {
    return MediaQuery.of(context).size.width;
  }

  static height(context) {
    return MediaQuery.of(context).size.height;
  }
}
