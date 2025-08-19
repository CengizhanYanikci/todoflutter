import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TodoList",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  const Iskele({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo List")),
      body: Anaekran(),
    );
  }
}

class Anaekran extends StatefulWidget {
  const Anaekran({super.key});

  @override
  State<Anaekran> createState() => _AnaekranState();
}

class _AnaekranState extends State<Anaekran> {
  TextEditingController t1 = TextEditingController();
  List<dynamic> liste = [];

  addelemnts() {
    setState(() {
      liste.add(t1.text);
      t1.clear();
    });
  }

  removeelements() {
    setState(() {
      liste.remove(t1.text);
      t1.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: ListView.builder(
              itemCount: liste.length,
              itemBuilder: (context, indexnumer) =>
                  ListTile(
                      subtitle: Text("Food"),
                      title: Text(liste[indexnumer])),
            ),
          ),
          TextField(controller: t1),
          ElevatedButton(onPressed: addelemnts, child: Text("Add")),
          ElevatedButton(onPressed: removeelements, child: Text("Remove")),
        ],
      ),
    );
  }
}
