
import 'package:flutter/material.dart';

class MyDataTable extends StatelessWidget {
  const MyDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              buildTableTitle(),
              buildTable(),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTableTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("ARVIND X"),
        Text("Total Count"),
        Text("Total Value"),
        Text(""),
        Text("D"),
      ],
    );
  }

  Table buildTable() {
    return Table(
      border: TableBorder.all(
        color: Colors.black,
        style: BorderStyle.solid,
        width: 2,
      ),
      children: [
        TableRow(children: [
          buildTableCell("Mobiles"),
          buildTableCell("10"),
          buildTableCell("200"),
          buildTableCell(""),
          buildTableCell(""),
        ]),
        TableRow(children: [
          buildTableCell("Accessories"),
          buildTableCell("5"),
          buildTableCell("75"),
          buildTableCell(""),
          buildTableCell(""),
        ]),
        TableRow(children: [
          buildTableCell("Overall"),
          buildTableCell("15"),
          buildTableCell("275"),
          buildTableCell(""),
          buildTableCell(""),
        ]),
        TableRow(children: [
          buildTableCell("Filter By Brands"),
          buildTableCell(""),
          buildTableCell(""),
          buildTableCell(""),
          buildTableCell("No Data Found"),
        ]),
      ],
    );
  }

  TableCell buildTableCell(String value) {
    return TableCell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          value,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}