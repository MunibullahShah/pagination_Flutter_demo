import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pagination/APIModel/airline_passangers_entity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int current_page = 0;

  List<AirlinePassangersData> passengers = [];

  @override
  void initState() {
    getPassenger();
  }

  getPassenger() async {
    final Uri uri = Uri.parse(
        "https://api.instantwebtools.net/v1/passenger?page=$current_page&size=10#");
    var response = await http.get(uri);

    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      var result = AirlinePassangersEntity.fromJson(decodedData);
      passengers = result.data!;
      current_page++;
    }
    setState(() {
      print("Changed");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagination"),
      ),
      body: passengers.length == 0
          ? Container()
          : ListView.builder(
              itemCount: passengers.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(passengers[index].name!),
                );
              },
            ),
    );
  }
}
