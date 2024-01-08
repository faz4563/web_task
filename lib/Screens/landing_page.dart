import 'package:flutter/material.dart';
import 'package:web_with_flutter/Screens/AppBar/drawer_page.dart';
import 'package:web_with_flutter/utils/hieght_width.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> ladingKey = GlobalKey(); // Create a key
    final width = DynamicSizes.width(context);
    final height = DynamicSizes.height(context);
    return SizedBox(
      width: width,
      height: height,
      child: Scaffold(
        key: ladingKey,
        drawer: Drawer(
          width: width * 0.13,
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
              side: const BorderSide(color: Colors.black)),
          child: const TooltipVisibility(
            visible: false,
            child: DrawerPage(),
          ),
        ),
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
              side: BorderSide(color: Colors.black)),
          title: const Text("data"),
          leading: IconButton(
              onPressed: () {
                ladingKey.currentState!.openDrawer();
              },
              icon: const Icon(Icons.menu)),
        ),
      ),
    );
  }
}
