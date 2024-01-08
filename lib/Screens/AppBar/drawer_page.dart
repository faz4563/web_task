import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(children: [
        ListTile(
          leading: const Icon(Icons.list),
          title: const Text("General"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.account_tree_rounded),
          title: const Text("Mapping"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.design_services),
          title: const Text("Design"),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.preview),
          title: const Text("Preview"),
          onTap: () {},
        ),
      ]),
    );
  }
}
