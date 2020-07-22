import 'package:flutter/material.dart';

import '../main.dart';

class Charts_pt2 extends StatelessWidget {
  const Charts_pt2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Widgets Pt2')),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.purple[900],
              border: Border.all(),
              borderRadius: BorderRadius.all(Radius.circular(3.0)),
            ),
            // column of three rows
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    final route1 =
                        MaterialPageRoute(builder: (context) => MyApp());

                    Navigator.push(context, route1);
                  },
                  tooltip: 'Increment',
                  child: Icon(Icons.arrow_back),
                  backgroundColor: Colors.orange,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      'Example Container/Column/Row/Text',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),

                // second row (single item)
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 0,
                  ),
                  child: Text(
                    'Send programmable push notifications to iOS and Android devices with delivery and open rate tracking built in.',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),

                // third row
                Row(
                  children: [
                    Text(
                      'EXPLORE BEAMS',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
