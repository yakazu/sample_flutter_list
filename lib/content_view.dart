import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SampleData {
  final int id;
  final String name;

  SampleData({this.id, this.name});
}

class ContentView extends StatelessWidget {
  final sampleDataList = [
    SampleData(id: 1, name: "sampleName1"),
    SampleData(id: 2, name: "sampleName2"),
    SampleData(id: 3, name: "sampleName3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: sampleDataList.length,
        itemBuilder: (BuildContext context, int index) {
          return Text(sampleDataList[index].name);
        },
      ),
      appBar: AppBar(
        title: Text("sample list"),
      ),
    );
  }
}
