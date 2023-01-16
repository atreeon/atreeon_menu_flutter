import 'package:atreeon_menu_flutter/menuSand.dart';
import 'package:flutter/material.dart';

abstract class MenuItemBase implements StatelessWidget {}

class MenuItemAdi extends StatelessWidget implements MenuItemBase {
  final String _title;
  final Widget Function() _routeWidget;
  final bool showTitleWithScaffold;

  MenuItemAdi(this._title, this._routeWidget, [this.showTitleWithScaffold = true]);

  Widget build(BuildContext context) => ListTile(
        title: Text(_title),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => showTitleWithScaffold
                ? SafeArea(
                    child: Scaffold(
                      appBar: AppBar(
                        title: Text(_title),
                      ),
                      body: _routeWidget(),
                    ),
                  )
                : SafeArea(
                    child: Scaffold(
                      body: Stack(
                        children: [
                          Opacity(
                            opacity: 0.5,
                            child: Row(
                              children: [
                                ElevatedButton(onPressed: () => Navigator.of(context).pop(), child: Text("<-")),
                                Container(height: 5),
                              ],
                            ),
                          ),
                          Expanded(
                            child: _routeWidget(),
                          ),
                        ],
                      ),
                    ),
                  ),
          ),
        ),
      );
}

class MenuWidget extends StatelessWidget implements MenuItemBase {
  final Widget _widget;

  MenuWidget(this._widget);

  Widget build(BuildContext context) => _widget;
}

class MenuSubMenu extends StatelessWidget implements MenuItemBase {
  final String _title;
  final List<MenuItemBase> _menuItems;

  MenuSubMenu(this._title, this._menuItems);

  Widget build(BuildContext context) => ListTile(
      title: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            _title,
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          //
          builder: (context) => Scaffold(body: MenuSand(_title, _menuItems)))));
}
