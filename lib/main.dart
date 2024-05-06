import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class ListItem{
  final List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  ListItem();
}
class MyApp extends StatelessWidget {
  MyApp({super.key});
  final ListItem item = ListItem();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Title',style: TextStyle(fontFamily: 'Poppins'),),
        ),
        backgroundColor: Colors.greenAccent,
        body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: item.months.length,
            itemBuilder: (context, index){
          return Row(
            children: [
               Text(item.months[index],style: const TextStyle(fontFamily: 'Poppins'),),
            ],
          );
        }),
      ),
    );
  }
}
