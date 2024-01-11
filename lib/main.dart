import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:web_with_flutter/Screens/general.dart';
import 'package:web_with_flutter/Screens/mapping.dart';

import 'services/tabAnimationService.dart';
import 'utils/tabAnimation.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => TabAnimationService(),
      child: const ScreenUtilInit(
          // builder: (context, child) {
          //   return const SizedBox();
          // },
          child: MyApp())));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showDiscovery = false;

  int count = 0;
  int btnPressed = 0;

  @override
  Widget build(BuildContext context) {
    final changeContext = Provider.of<TabAnimationService>(context);
    return Portal(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: const Text('Neverskip Testing Tech')),
          body: changeContext.btnPressed == 0
              ? const MappingTab()
              : changeContext.btnPressed == 1
                  ? const GenaralTab()
                  : changeContext.btnPressed == 2
                      ? const SizedBox(
                          child: Center(
                            child: Text("Design"),
                          ),
                        )
                      : changeContext.btnPressed == 3
                          ? const SizedBox(
                              child: Center(
                                child: Text("Preview"),
                              ),
                            )
                          : const SizedBox(),
          floatingActionButton: Discovery(
            visible: changeContext.visible,
            description: const Text(''),
            btnSelected: btnPressed,
            onClose: () => setState(() => changeContext.visible = false),
            child: FloatingActionButton(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular((50))),
              onPressed: () {
                setState(() => changeContext.visible = !changeContext.visible);
              },
              tooltip: "Menu",
              isExtended: true,
              child: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
