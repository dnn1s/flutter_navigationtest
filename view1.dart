import 'package:flutter/material.dart';
import 'subview1.dart';

class View1 extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return new RaisedButton(
            child: new Text('Push Subview1'),
            onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) {
                        return new SubView1();
                    }
                ));
            },
        );
    }

}