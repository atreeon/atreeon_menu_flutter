import 'package:atreeon_menu_demo/APage.dart';
import 'package:atreeon_menu_flutter/menuItem.dart';
import 'package:atreeon_menu_flutter/menuSand.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) => MaterialApp(
        title: 'atreeon menu demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: MyHomePage(),
      );
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) => MenuSand(
        "atreeon_menu_flutter",
        [
          MenuWidget(
            Column(
              children: [
                Text("this"),
                Text("is"),
                Text("a menu widget, you can put anything here"),
                TextButton(
                  onPressed: () => launchUrl(Uri.parse("https://pub.dev/packages/atreeon_menu_flutter")),
                  child: Text('https://pub.dev/packages/atreeon_menu_flutter'),
                ),
              ],
            ),
          ),
          MenuItemAdi("A page with menu & scaffold", () => APage()),
          MenuSubMenu(
            "A submenu",
            [
              MenuItemAdi("Option 1", () => APage()),
              MenuItemAdi("Option 2", () => APage()),
              MenuSubMenu(
                "Another sub menu",
                [
                  MenuItemAdi("Option 1", () => APage()),
                  MenuItemAdi("Option 2", () => APage()),
                ],
              )
            ],
          ),
          MenuItemAdi(
            "A page with no scaffold and menu",
            () => Center(child: APage()),
            false,
          ),
        ],
      );
}
