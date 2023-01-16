import 'package:flutter/material.dart';
import 'menuItem.dart';

class MenuSand extends StatelessWidget {
  final String _title;
  final List<MenuItemBase> _menuItems;

  MenuSand(this._title, this._menuItems);

  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: _build(context));

  Widget _build(BuildContext context) =>
      Scaffold(body: ListView(children: _menuItems));
}
