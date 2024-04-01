
// models/invoice.dart

import 'package:flutter/material.dart';

enum InvoiceType { sales, purchase }

class Invoice {
  final String id;
  final String clientName;
  final double amount;
  final DateTime date;
  final InvoiceType type;

  Invoice({required this.id, required this.clientName, required this.amount, required this.date, required this.type});
}

// dummy_data.dart

List<Invoice> dummyInvoices = [
  Invoice(id: '001', clientName: 'Client A', amount: 100.0, date: DateTime(2024, 3, 15), type: InvoiceType.sales),
  Invoice(id: '002', clientName: 'Client B', amount: 150.0, date: DateTime(2024, 3, 20), type: InvoiceType.sales),
  Invoice(id: '003', clientName: 'Vendor X', amount: 200.0, date: DateTime(2024, 3, 25), type: InvoiceType.purchase),
];

// main.dart


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Invoice Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: InvoiceDashboard(),
    );
  }
}

class InvoiceDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Invoice> salesInvoices = dummyInvoices.where((invoice) => invoice.type == InvoiceType.sales).toList();
    List<Invoice> purchaseInvoices = dummyInvoices.where((invoice) => invoice.type == InvoiceType.purchase).toList();

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Invoice Dashboard'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Sales'),
              Tab(text: 'Purchases'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            InvoiceList(invoices: salesInvoices),
            InvoiceList(invoices: purchaseInvoices),
          ],
        ),
      ),
    );
  }
}

class InvoiceList extends StatelessWidget {
  final List<Invoice> invoices;

  InvoiceList({required this.invoices});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: invoices.length,
      itemBuilder: (context, index) {
        Invoice invoice = invoices[index];
        return ListTile(
          title: Text(invoice.clientName),
          subtitle: Text('\$${invoice.amount.toStringAsFixed(2)} - ${invoice.date.toString()}'),
          onTap: () {
            // Implement navigation to detailed invoice view
          },
        );
      },
    );
  }
}
