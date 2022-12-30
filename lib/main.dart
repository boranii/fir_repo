import 'package:flutter/material.dart';
import 'route.dart';

void main() => runApp(Man());

class Man extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'first app',
      theme: ThemeData(primaryColor: Colors.red),
      onGenerateRoute: Routes.generateR,
      initialRoute: '/',
    );
  }
}

class Myappp extends StatefulWidget {
  @override
  _MyapppState createState() => _MyapppState();
}

class _MyapppState extends State<Myappp> {
  List<Widget> _widgetOption(BuildContext context) {
    return [
      Container(
          child: TextButton(
              child: Text('hello'),
              onPressed: () {
                Navigator.of(context).pushNamed("seconed");
              })),
      Container(child: Text('hello')),
      Container(child: Text('hello'))
    ];
  }

  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOption(context)[i],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: "hi"),
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: "hi"),
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: "hi")
          ],
          onTap: (Index) {
            setState(() {
              Index = i;
            });
          }),
    );
  }
}
