import 'package:flutter/material.dart';
import 'package:flutter_test1/pages/home.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  try {
    final box = await Hive.openBox('mybox'); // Open the Hive box
    print('Box opened: ${box.isOpen}'); // Check if the box is opened
    runApp(MyApp(box: box));
  } catch (e) {
    print('Error opening box: $e');
  }
}

class MyApp extends StatelessWidget {
  final Box box;
  const MyApp({super.key, required this.box});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(box: box),
        theme: ThemeData(primarySwatch: Colors.yellow));
  }
}
