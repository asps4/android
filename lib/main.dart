import 'package:flutter/material.dart';

List<Color> colors = [
  Colors.red,
  Colors.lightBlueAccent,
  Colors.black,
  Colors.yellow,
  Colors.yellowAccent,
  Colors.teal,
  Colors.cyanAccent,
  Colors.indigo,
  Colors.purple,
  Colors.blueGrey,
  Colors.brown,
  Colors.tealAccent
];

List<Color> colors1 = [
  Colors.red,
  Colors.lightBlueAccent,
  Colors.black,
  Colors.yellow,
  Colors.yellowAccent,
  Colors.teal,
];
final data1 = [
  "hendrik",
  "Yadi",
  "upey",
  "syarif",
  "bagja",
  "YUDA",
];

final data2 = [
  "hendrik",
  "Yadi",
  "upey",
  "syarif",
  "bagja",
  "YUDA",
  "hendrik",
  "Yadi",
  "upey",
  "syarif",
  "bagja",
  "YUDA"
];

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          title: Text('List View Project'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 280,
                    width: 400,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: colors1.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Center(
                              child: Text(
                                data1[index],
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            width: 100,
                            height: 400,
                            color: colors1[index],
                          );
                        }),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 20, top: 20),
                    height: 200,
                    width: 400,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: colors1.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Center(
                              child: Text(
                                data1[index],
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            width: 100,
                            height: 400,
                            color: colors1[index],
                          );
                        }),
                  ),
                  Container(
                    height: 200,
                    child: GridView.count(
                      scrollDirection: Axis.horizontal,
                      crossAxisCount: 2,
                      children: List.generate(12, (index) {
                        return Container(
                          child: Card(
                            margin: EdgeInsets.all(2),
                            child: Center(
                              child: Text(
                                data2[index],
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            color: colors[index],
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
