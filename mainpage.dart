import 'package:flutter/material.dart';

import 'view1.dart';
import 'view2.dart';
import 'view3.dart';

/// just a wrapper class for drawer items; in my original code, these include 
/// icons and other properties
class DrawerItem {
    String title;
    DrawerItem({this.title});
}

class MainPage extends StatefulWidget {

    /// list of items in the drawer
    final drawerItems = [
        new DrawerItem(title: 'Item 1'), new DrawerItem(title: 'Item 2'), new DrawerItem(title: 'Item 3')
    ];

    @override
    State<MainPage> createState() => new MainPageState();
}

class MainPageState extends State<MainPage> {
	int _selectedPageIndex = 0;

    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: new AppBar(
                /// dynamic title, depending on the current view
                title: new Text(widget.drawerItems[_selectedPageIndex].title),
            ),
            drawer: new Drawer(
                child: new ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                        new DrawerHeader(child: new Text('Drawer header')),
                        /// quick and easy way to create the items; in the original
                        /// code, these items are built in a loop
                        _buildDrawerItem(0),
                        _buildDrawerItem(1),
                        _buildDrawerItem(2),
                    ],
                )
            ),
            body: _buildCurrentPage()
        );
    }

    Widget _buildCurrentPage() {
        switch(_selectedPageIndex) {
            case 0: return new View1();
            case 1: return new View2();
            case 2: return new View3();
        }
        return new Text('Invalid page index');
    }

    Widget _buildDrawerItem(int index) {
        return new ListTile(
            title: new Text(widget.drawerItems[index].title),
            selected: _selectedPageIndex == index,
            onTap: () => _handleSelection(index),
        );
    }

    void _handleSelection(int index) {
        setState(() {
            _selectedPageIndex = index;
        });
        /// close the drawer
        Navigator.of(context).pop();
    }

}
