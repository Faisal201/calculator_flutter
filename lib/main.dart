import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(CupertinoIcons.profile_circled),
              color: Colors.white,
              onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a drawer')));
            },
              tooltip: 'Open Drawer',
            );
          },
        ),
        backgroundColor: Colors.blueAccent,
        title: Text(widget.title,
          style: TextStyle(color: Colors.white),),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.more_vert),
            color: Colors.white,
            tooltip: 'Show menu',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is menu')));
            },
          ),
        ],
      ),

      body: Center(
        child: Column(
          children: <Widget>[
            Padding(padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16)),
      Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child : TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter numbers',
            ),
          keyboardType: TextInputType.multiline,
          minLines: 2,
          maxLines: 2,
        ),
      ),

            Padding(padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16)),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child : ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(50),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blueAccent// fromHeight use double.infinity as width and 40 is the height
                ),
                onPressed: () {},
                child: Icon(Icons.add)
              )
            ),

            Padding(padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16)),
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child : ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(50),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blueAccent// fromHeight use double.infinity as width and 40 is the height
                    ),
                    onPressed: () {},
                    child: Icon(Icons.remove)
                )
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16)),
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child : ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(50),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blueAccent// fromHeight use double.infinity as width and 40 is the height
                    ),
                    onPressed: () {},
                    child: Icon(CupertinoIcons.divide)
                )
            ),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16)),
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child : ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(50),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blueAccent// fromHeight use double.infinity as width and 40 is the height
                    ),
                    onPressed: () {},
                    child: Icon(Icons.close)
                )
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
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
        currentIndex: 0,
        selectedItemColor: Colors.blueAccent,

      ),
    );
  }
}
