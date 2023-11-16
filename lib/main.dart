import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Random random = Random();

  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Lottery App.')),
          leading: Icon(Icons.menu),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search))
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Winning Lottery Number is 5',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            x == 5
                ? Container(
                    height: 300,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.withOpacity(.5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.done_all,
                          color: Colors.green,
                          size: 50,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Congratulation You have Won the Lottery\n Your Number is $x",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                : Container(
                    height: 300,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.withOpacity(.5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.error,
                          color: Colors.red,
                          size: 50,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Better Luck Next Time, Your Number is $x \n try again",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.refresh),
          onPressed: () {
            x = random.nextInt(6);
            setState(() {});
          },
        ),
      ),
    );
  }
}
