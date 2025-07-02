import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Datamanager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DatamanagerState();
  }
}

class DatamanagerState extends State<Datamanager> {
  final CollectionReference calorieinfo =
      FirebaseFirestore.instance.collection('calorieinfo');

  Future<String> readData() async {
    QuerySnapshot foods = await calorieinfo.get();
    String data = "";
    for (var food in foods.docs) {
      data += food.id + ", ";
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future:
          readData(), //snapshot.data contains the result of the Future you passed to future:.
      //It holds the value returned by the Future function once it completes successfully.
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else {
          return Center(child: Text('Data: ${snapshot.data}'));
        }
      },
    );
  }
}
