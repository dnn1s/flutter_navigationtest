import 'package:flutter/material.dart';

import 'mainpage.dart';

void main() => runApp(new NavigationTestApp());

class NavigationTestApp extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return new MaterialApp(
			title: 'Navigation test',
			home: new MainPage(),
		);
	}
}
