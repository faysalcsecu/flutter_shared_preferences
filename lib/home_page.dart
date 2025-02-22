import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int number = 0;

  @override
  void initState() {
    // TODO: implement initState
    // loadNumber();
    super.initState();
    loadNumber();

  }

  Future<void> loadNumber() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    int count = pref.getInt("counter") ?? 0;

    number = count;
    setState(() {});
  }

  Future<void> incrementNumber() async {
    number++;
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt("counter", number);
    setState(() {});
    // print(number);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shared Preference",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Text(
          number.toString(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
            color: Colors.blue,
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          incrementNumber();
        },
        tooltip: "Add",
        child: Icon(Icons.add),
      ),
    );
  }
}
