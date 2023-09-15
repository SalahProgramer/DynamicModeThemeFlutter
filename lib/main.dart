import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  bool iconbool = false;
  IconData iconlight = Icons.wb_sunny;
  IconData icondark = Icons.nights_stay;

  ThemeData light=ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.yellow,
    buttonTheme: ButtonThemeData(

        buttonColor: Colors.black

    ),
    iconTheme: const IconThemeData(

        color: Colors.red

    ),

  );
  ThemeData dark=ThemeData(
      primarySwatch: Colors.red,
      brightness: Brightness.dark,
      iconTheme: IconThemeData(

          color: Colors.yellow

      ),
      buttonTheme: ButtonThemeData(

          buttonColor: Colors.yellow

      )

  );


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      darkTheme: dark,
      theme: iconbool ? light: dark,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(),

        appBar: AppBar(
          centerTitle: true,
          title: Text(" dark & light theme"),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    iconbool=!iconbool;
                  });
                }, icon: Icon(iconbool ? icondark : iconlight)),

          ],

        ),
        body: Center(
          child: Icon(Icons.confirmation_num_sharp),



        ),
      ),
    );
  }
}
