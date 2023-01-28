import 'package:flutter/material.dart';



class BelajarListView extends StatelessWidget {
  final List santri = [
    "Royyan",
    "Marvel",
    "Haritsah",
    "Izzul",
    "Izam",
    "fariska",
    "zaki",
    "azka",
    "aufa",
    "fatih",
    "furqan",
    "ali"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan[300],
          title: Text("Santri"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                  title: Text(
                      santri[index],
                      style: TextStyle(fontSize: 30)
                  ),
                  subtitle: Text('Halaqoh Ustadz Ismail'),
                  leading: CircleAvatar(
                    backgroundColor: Colors.cyan[100],
                    child: Text(
                        santri[index][0], // ambil karakter pertama text
                        style: TextStyle(
                            color: Color(0xFF4DD0E1),
                            fontSize: 20)
                    ),
                  )
              ),
            );
          },
          itemCount: santri.length,
        )
    );
  }
}