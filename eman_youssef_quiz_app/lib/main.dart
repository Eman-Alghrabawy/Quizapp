import 'package:flutter/material.dart';

void main() {
  runApp(
      const Directionality(textDirection: TextDirection.ltr, child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://i.pinimg.com/originals/89/8f/55/898f55541619725fbbfbd88428b1ec98.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 16.0,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Button action
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Button is Pressed'),
                          content: const Text('The button was pressed'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Close'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: const Text('Start'),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 70,
                    backgroundImage: NetworkImage(
                        'https://img.freepik.com/free-vector/hand-drawn-yellow-speech-bubble-sticker-vector_53876-174236.jpg?w=740&t=st=1691694412~exp=1691695012~hmac=57daeacb327098abeaf22abb10c529b531931f6fc187006fb5c4d719cc5d911b'),
                    child: Text(
                      'QUIZ TIME',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: const Text(
                      'ITI Quiz App',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: const Text(
                      'We Are Creatve, enjoy our app',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontFamily: 'DancingScript',
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
