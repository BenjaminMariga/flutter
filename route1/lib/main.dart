import 'package:flutter/material.dart';

void main() {
  runApp(routeR1());
}

class routeR1 extends StatefulWidget {
  routeR1({super.key});

  @override
  State<routeR1> createState() => _routeR1State();
}

class _routeR1State extends State<routeR1> {
  String buttonName = 'click';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('welcome to Route1'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      buttonName = 'clicked';
                    });
                  },
                  child: Text(buttonName)),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    buttonName = 'clicked';
                  });
                },
                child: Text(buttonName),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                label: 'home',
                icon: Icon(
                  Icons.home,
                  size: 50,
                )),
            BottomNavigationBarItem(
              label: 'settings',
              icon: Icon(
                Icons.settings,
                size: 50,
                color: Color.fromARGB(255, 167, 18, 7),
              ),
            ),
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
