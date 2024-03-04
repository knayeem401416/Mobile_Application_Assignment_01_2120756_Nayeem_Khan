import 'package:assignment_01/task_page.dart';
import 'package:flutter/material.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'Assignment 01',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
            ),
            home: const MyHomePage(),
        );
    }
}

class MyHomePage extends StatelessWidget {
    const MyHomePage({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.white,
            ),
            backgroundColor: Colors.white,
            body: Center(
                child: ListView(
                    children: [
                        SizedBox(
                            height: 150,
                        ),
                        Text(
                            "Welcome to",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w100,
                            ),
                        ),
                        Text(
                            "Plan IT",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w900,
                            ),
                        ),
                        SizedBox(
                            height: 350,
                        ),
                        Text(
                            "Your Personal task management\nand planning solution",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w100,
                            ),
                        ),
                        SizedBox(
                            height: 20,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                ElevatedButton(
                                    onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(builder: (context) => TaskPage())
                                        );
                                    },
                                    child: Text(
                                        "Let's get started",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white,
                                        ),
                                    ),
                                    style: ButtonStyle(
                                        backgroundColor:
                                        MaterialStateProperty.all(Colors.grey[800]),
                                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 50, vertical: 20)),
                                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)))),
                                ),
                            ],
                        ),
                    ],
                ),
            ),
        );
    }
}
