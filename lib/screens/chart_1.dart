import 'package:flutter/material.dart';

import '../main.dart';

class Charts_pt1 extends StatefulWidget {
  Charts_pt1({Key key}) : super(key: key);

  @override
  _Charts_pt1State createState() => _Charts_pt1State();
}

class _Charts_pt1State extends State<Charts_pt1> {
  String _email = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chart 1')),
      body: ListView(
        children: <Widget>[
          Container(
            height: 150,
            width: 600,
            color: Colors.green,
            child: Center(
                child: Text(
              'Hello Homework Pt1',
              style: TextStyle(fontSize: 25),
            )),
          ),
          Container(
            padding: EdgeInsets.all(23),
            height: 150,
            width: 600,
            color: Colors.grey[300],
            child: Center(
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        //personalizar que tan pronunciados quiero los border
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'Write your Email here',
                    labelText: 'Email',
                    suffixIcon: Icon(Icons.alternate_email),
                    icon: Icon(Icons.email)),
                onChanged: (valor) => setState(() {
                  _email = valor;
                }),
              ),
            ),
          ),
          Container(
              height: 150,
              width: 600,
              color: Colors.blue[300],
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 80,
                  ),
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
                  SizedBox(
                    width: 80,
                  ),
                  RaisedButton(
                    child: const Text('Button 1'),
                    color: Colors.green,
                    elevation: 4.0,
                    splashColor: Colors.yellow,
                    onPressed: () {
                      // do something
                    },
                  ),
                  SizedBox(
                    width: 80,
                  ),
                ],
              )),
          Container(
              height: 150,
              width: 600,
              color: Colors.yellow,
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text('Row $index'),
                    onTap: () {
                      // do something
                    },
                  );
                },
              )),
        ],
      ),
    );
  }
}
