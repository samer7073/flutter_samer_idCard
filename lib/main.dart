// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Project_id(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Project_id extends StatefulWidget {
  const Project_id({super.key});

  @override
  State<Project_id> createState() => _Project_idState();
}

class _Project_idState extends State<Project_id> {
  int SamerLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Samer ID Card "),
        ),
        backgroundColor: Colors.grey[800],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            SamerLevel++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        color: Colors.black,
        width: double.infinity,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 30),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/1.jpg"),
                    radius: 50,
                  ),
                ),
              ),
              Icon(
                Icons.verified,
                color: Colors.blue,
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Text("Name :",
                    style: TextStyle(fontSize: 22, color: Colors.grey[500])),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10, left: 20),
                child: Text(
                  "Samer",
                  style: TextStyle(
                      fontSize: 33,
                      color: Colors.amber[500],
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10, left: 20),
                child: Text("Current Level :",
                    style: TextStyle(fontSize: 22, color: Colors.grey[500])),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10, left: 20),
                child: Text(
                  "$SamerLevel",
                  style: TextStyle(
                      fontSize: 33,
                      color: Colors.amber[500],
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "samerarfaoui2@gmail.com",
                  style: TextStyle(color: Colors.grey, fontSize: 22),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
