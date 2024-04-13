// main.dart
import 'package:bloc_counter/presentation/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc.dart';
 // Importing the home page

void main() {
  runApp(MyApp());
}

// Defining the root widget of the Flutter application, MyApp.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Returning a MaterialApp widget, which represents the root of the application.
    return MaterialApp(
      // Setting the title of the application.
      title: 'Flutter BLoC Example',
      // Defining the theme for the application.
      theme: ThemeData(
        primarySwatch: Colors.blue, // Setting the primary color to blue.
      ),
      // Specifying the home screen of the application.
      home: BlocProvider(
        // Creating and providing a CounterBloc instance at the root of the widget tree.
        create: (context) => CounterBloc(),
        // Displaying the CounterPage widget as the home screen.
        child: CounterPage(),
      ),
    );
  }
}

