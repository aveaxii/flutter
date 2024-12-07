import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const List names = ["Mitch", "Sharon", "Vince"];

  void userTapped() {
    print("User tapped");
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text("My App Bar"),
            backgroundColor: Colors.deepPurple,
            elevation: 0.0,
            leading: const Icon(Icons.menu),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.logout))
            ],
          ),
          body: Column(
            children: [
              // Expanded(child: Container(color: Colors.blue)),
              // Expanded(flex: 3, child: Container(color: Colors.green)),
              // Expanded(child: Container(color: Colors.yellow)),
              Expanded(
                  child: ListView.builder(
                itemCount: names.length,
                itemBuilder: (context, index) =>
                    ListTile(title: Text(names[index])),
              )),
              // Expanded(
              //   child: GridView.builder(
              //       itemCount: 64,
              //       gridDelegate:
              //           const SliverGridDelegateWithFixedCrossAxisCount(
              //               crossAxisCount: 4),
              //       itemBuilder: (context, index) => Container(
              //             color: Colors.blue,
              //             margin: const EdgeInsets.all(2),
              //           )),
              // )
              Expanded(
                  child: Stack(children: [
                Container(height: 300, width: 300, color: Colors.brown)
              ])),
              Expanded(
                  child: GestureDetector(
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                  child: const Center(child: Text('Tap me!')),
                ),
                onTap: () => userTapped(),
              ))
            ],
          ),
        ));
  }
}
