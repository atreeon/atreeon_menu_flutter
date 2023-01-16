# atreeon_menu_flutter
Displays a series of menus based on single pages for demoing purposes.

Written a long time ago so the code might not be the best.

Should work on all devices but let me know if it doesn't!

```
    MenuSand(
        "Demos",
        [
          MenuWidget(
            Column(
              children: [
                Text("this"),
                Text("is"),
                Text("a menu widget, anything goes"),
              ],
            ),
          ),
          MenuItemAdi("A page with no scaffold and menu", () => APage(), false),
        ],
    )
```