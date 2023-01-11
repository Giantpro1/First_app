import 'package:flutter/material.dart';

 
String buttonName = 'Clicked Me';
int currentIndex = 0;

class AccessFlutterWidget extends StatefulWidget {
  @override
  State<AccessFlutterWidget> createState() => _AccessFlutterWidgetState();
}

class _AccessFlutterWidgetState extends State<AccessFlutterWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Your Mobile App Class'),
        ),
        body: Center(
          child: currentIndex == 0
              ? Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.purple,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        onPressed: () {
                          setState(() {
                            buttonName = 'Clicked Successfully';
                          });
                        },
                        child: Text(
                          buttonName,
                          style: TextStyle(color: Colors.black12),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amberAccent,
                        ),
                        onPressed: () {
                          setState(() {
                            buttonName = 'Clicked Successfully';
                          });
                        },
                        child: Text(
                          buttonName,
                          style: TextStyle(color: Colors.black12),
                        ),
                      ),
                    ],
                  ),
                )
              : Image.asset('images/slide01.jpg'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: 'Settings', icon: Icon(Icons.settings)),
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
