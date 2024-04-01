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
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: 3,
            //       itemBuilder: (context ,index){
            //     return Card(
            //       shape: LinearBorder(),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Text(
            //             name,
            //             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //           ),
            //           Text(
            //             '|',
            //             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //           ),
            //           SizedBox(height: 16),
            //           Text(
            //             contactNumber,
            //             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //           ),
            //           Text(
            //             '|',
            //             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //           ),
            //           SizedBox(height: 16),
            //           Text(
            //             city,
            //             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //           ),
            //           Text(
            //             '|',
            //             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //           ),
            //           Text(
            //             "--/--",
            //             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //           ),
            //         ],
            //       ),
            //     );
            //   }),
            // )
          ],
        ),
      ),
    );
  }
}