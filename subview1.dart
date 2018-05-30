import 'package:flutter/material.dart';

class SubView1 extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: new AppBar(
                title: new Text('SubView1'),
            ),
            body: new Text('Pushed from View1')
        );
    }

}