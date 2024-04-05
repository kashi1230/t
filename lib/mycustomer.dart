import 'package:flutter/material.dart';

class CustomerScreen extends StatelessWidget {
  final String name = 'Ajay Chauhan';
  final String contactNumber = '9893072833';
  final String city = 'Shivpuri';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Customers'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              shape: LinearBorder(),
              color: Colors.white38,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Name',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '|',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Contact Number',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '|',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'City',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '|',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Action',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}

// DataTable(
// columns: [
// DataColumn(label: Text('Name')),
// DataColumn(label: Text('Contact Number')),
// DataColumn(label: Text('City')),
// ],
// rows: [
// DataRow(
// cells: [
// DataCell(Text('ajay chauhan')),
// DataCell(Text('9893072833')),
// DataCell(Text('Shivpuri')),
// ],
// ),
// ],
// ),