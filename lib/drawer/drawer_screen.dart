import 'package:flutter/material.dart';
import 'package:quiz_demo/buiesness/buiesness_scree.dart';
import 'package:quiz_demo/quiz.dart';

class DrawerDemo extends StatefulWidget {
  const DrawerDemo({Key? key}) : super(key: key);

  @override
  State<DrawerDemo> createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
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
        title: Text('Drawer Demo'),
      ),
      body: _selectedIndex == 1 ? const Quiz() : BusinessScreen(),
      bottomNavigationBar: BottomNavigationBar(

        items:  const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      drawer: Drawer(

        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),

              child: Center(
                widthFactor: double.infinity,
                child: Image.asset('assets/images/quiz-logo.png'),
              ),
            ),
            ListTile(
              title: const Text('Start Quiz'),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Quiz()),
                );
                //Navigator.pop(context);
              },
            ),ListTile(
              title: const Text('Open Dialog'),
              onTap: (){
                Navigator.pop(context);
                showModel(context);
                //Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }


  void showModel(BuildContext context){
    showDialog<void>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        content: const Text('Example Dialog'),
        actions: <TextButton>[
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Close'),
          )
        ],
      ),
    );
  }
}
