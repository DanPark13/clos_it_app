/// All packages needed for project

import 'package:flutter/material.dart';
import 'Statspage.dart';

/// Runs the app
void main() {
  runApp(clos_it());
}

/// This Widget is the main application widget.
class clos_it extends StatelessWidget {
  static const String _title = 'Clos.it';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  final List<Widget> _widgetOptions = <Widget>[
    GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        GestureDetector(
          onTap:(){
            print("You touched me!");
          },
          child: new Container(
            padding: const EdgeInsets.all(8),
            child: Icon(Icons.add),
            color: Colors.grey,
          )
        ),
      ],
    ),
    Column(
      children: <Widget>[
        Text(
          "Customize",
        ),
      ],
    ),
    Column(
     children: <Widget>[
       Text(
         "Statistics"
       ),
       Expanded(
         child: StatsPage()
       )
     ],
    ),

    ListView.builder(
      itemCount: 3, //insert length of donation
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            onTap: () {},
            title: Text("afdsadfs"), //insert where to find title
          ),
        );
      },

    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Welcome to Clos.it!'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.folder_shared),
            title: Text('MyCloset'),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assistant),
            title: Text('Customize'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.equalizer),
            title: Text('Statistics'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            title: Text('Donation'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}

