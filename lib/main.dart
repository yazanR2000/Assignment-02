import 'package:assignment1/dummy_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Assignment(),
    );
  }
}

class Assignment extends StatelessWidget {
  Assignment({super.key});

  final List<Map<String, dynamic>> _info = [
    {
      "imageUrl":
          "https://c.ndtvimg.com/2020-08/h5mk7js_cat-generic_625x300_28_August_20.jpg",
      "info": {"name": "Kitty 1", "age": "3 Mounths", "gender": "male"},
    },
    {
      "imageUrl":
          "https://i.cbc.ca/1.5256404.1566499707!/fileImage/httpImage/image.jpg_gen/derivatives/16x9_940/cat-behaviour.jpg",
      "info": {"name": "Kitty 2", "age": "1 Mounths", "gender": "Female"},
    },
  ];

  Widget _containerAndCard(String title, Color backColor, Color textColor) {
    return Expanded(
      child: Container(
        //margin: const EdgeInsets.only(right: 20),
        color: backColor,
        padding: const EdgeInsets.all(5),
        child: Card(
          child: Text(
            title,
            style: TextStyle(
              color: textColor,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(_info[0]["imageUrl"]),
              )),
            ),
            Container(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      _containerAndCard(_info[0]["info"]['name'], Colors.purple,
                          Colors.black),
                          const SizedBox(
                        width: 20,
                      ),
                      _containerAndCard(
                          _info[0]["info"]['age'], Colors.black, Colors.red),
                          const SizedBox(
                        width: 20,
                      ),
                      _containerAndCard(_info[0]["info"]['gender'], Colors.blue,
                          Colors.yellow),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("hi"),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(_info[1]["imageUrl"]),
                          )),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                        height: 20,
                      ),
                  Row(
                    children: [
                      _containerAndCard(_info[1]["info"]['name'], Colors.purple,
                          Colors.black),
                      const SizedBox(
                        width: 20,
                      ),
                      _containerAndCard(
                          _info[1]["info"]['age'], Colors.black, Colors.red),
                      const SizedBox(
                        width: 20,
                      ),
                      _containerAndCard(_info[1]["info"]['gender'], Colors.blue,
                          Colors.yellow),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
