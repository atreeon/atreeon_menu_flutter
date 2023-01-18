# atreeon_menu_flutter

Displays a series of menus with navigation built in for single pages.  I use this to demo various aspects of various widgets.

Should work on all devices but let me know if it doesn't!

<p align="center">
<img alt="atreeon_datagrid_responsive example" src="https://github.com/atreeon/atreeon_menu_flutter/raw/master/resources/AtreeonMenuFlutter_Example.gif">
</p>

*Written a long time ago so the code might not be the best.*

## Simple Demo

see examples folder for more examples

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

## Features

## Limitations

## Other Notes / Information
*written a few years ago* 