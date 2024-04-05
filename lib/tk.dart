import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


// Simple class to manage app bar title changes
class AppBarTitleNotifier with ChangeNotifier {
  String _title = 'Home'; // Default title

  String get title => _title;

  void setTitle(String newTitle) {
    _title = newTitle;
    notifyListeners(); // Notify listeners of the change
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer<AppBarTitleNotifier>(
          builder: (context, appBarTitle, _) => Text(appBarTitle.title),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondScreen(),
              ),
            );
            // Change app bar title when navigating to the second screen
            Provider.of<AppBarTitleNotifier>(context, listen: false)
                .setTitle('Second Screen');
          },
          child: Text('Go to Second Screen'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            // Change app bar title when navigating back to the main screen
            Provider.of<AppBarTitleNotifier>(context, listen: false)
                .setTitle('Home');
          },
          child: Text('Go back to Home Screen'),
        ),
      ),
    );
  }
}
