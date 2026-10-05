import 'package:esercitazione_liste/views/lista_prodotti.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: isDark ? Brightness.dark : Brightness.light,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text('Esercitazione')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              isDark = !isDark;
            });
          },
          child: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
        ),
        body: ListaProdotti(),
      ),
    );
  }
}
