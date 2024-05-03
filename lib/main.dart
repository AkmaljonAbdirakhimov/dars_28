import 'package:dars_28/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode themeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.amber,
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(),
      themeMode: themeMode,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tungi va Kunduzgi Hayot"),
          actions: [
            IconButton(
              onPressed: () {
                if (themeMode == ThemeMode.system ||
                    themeMode == ThemeMode.light) {
                  themeMode = ThemeMode.dark;
                } else {
                  themeMode = ThemeMode.light;
                }
                setState(() {});
              },
              icon: Icon(
                themeMode == ThemeMode.system || themeMode == ThemeMode.light
                    ? Icons.dark_mode
                    : Icons.light_mode,
              ),
            )
          ],
        ),
      ),
    );
  }
}
