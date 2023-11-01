import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Card(
            color: Colors.white,
            margin: EdgeInsets.all(2),
            elevation: 3,
            child: Column(
              children: [
                Image(image: AssetImage('lib/images/image3.jpg')),
                ListTile(
                  title: Text("ÖZELLİKLER"),
                ),
                ListTile(
                  title: Text("Özellik1"),
                  subtitle: Text("Özellik_1"),
                ),
                ListTile(
                  title: Text("Özellik2"),
                  subtitle: Text("Özellik_2"),
                ),
                ListTile(
                  title: Text("Özellik3"),
                  subtitle: Text("Özellik_3"),
                ),
                ListTile(
                  title: Text("Özellik4"),
                  subtitle: Text("Özellik_4"),
                ),
                ListTile(
                  title: Text("Özellik5"),
                  subtitle: Text("Özellik_5"),
                ),
                ListTile(
                  title: Text("Özellik6"),
                  subtitle: Text("Özellik_6"),
                ),
                ListTile(
                  title: Text("Özellik7"),
                  subtitle: Text("Özellik_7"),
                ),
                ListTile(
                  title: Text("Özellik8"),
                  subtitle: Text("Özellik_8"),
                ),
                ListTile(
                  title: Text("Özellik9"),
                  subtitle: Text("Özellik_9"),
                ),
                ListTile(
                  title: Text("Özellik10"),
                  subtitle: Text("Özellik_10"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
