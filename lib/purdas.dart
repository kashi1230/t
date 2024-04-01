import 'package:flutter/material.dart';


class MyHomePage extends StatelessWidget {
  final count =[
    50,
    20,
    30
  ];
  final totalval =[
    50000.0,
    20000.1,
    300000.0
  ];
  final name =[
    "Accesories",
    "Mobile",
    "Electronics"
  ];
  final List<Color> colors =[
    Colors.orange,
    Colors.green,
    Colors.yellow
  ];
  final int accessoriesCount = 50;
  final double accessoriesValue = 5000.0;
  final int mobilesCount = 20;
  final double mobilesValue = 25000.0;
  final int electronicsCount = 30;
  final double electronicsValue = 30000.0;

   MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accessories and Electronics'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: GridView.builder(
              itemCount: 3,
                itemBuilder:(context ,index){
              return  CustomCard(
                title: name[index],
                count: count[index],
                value: totalval[index],
                color: colors[index],
              );
            }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              childAspectRatio: 1.5/1.7
            ),),
          )
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String title;
  final int count;
  final double value;
  final Color color;

  const CustomCard({super.key,
    required this.title,
    required this.count,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 5,
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Count: $count',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Total Value: \$${value.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
