import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dyar App'),
          backgroundColor: const Color.fromARGB(239, 163, 84, 84),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.home),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.call),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(250), // Image border
                  child: SizedBox.fromSize(
                      size: const Size.fromRadius(200), // Image radius
                      child: Image.network(
                        'https://ca.slack-edge.com/T03HDU8MWTA-U03GQLQD32P-f2be411d4a7c-512',
                        height: 700,
                        width: 700,
                      ))),
              const SizedBox(height: 50),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Dyar Application',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(241, 153, 38, 38),
                    fontFamily: 'Arial',
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 60,
          color: Color.fromARGB(255, 145, 66, 66),
        ));
  }
}
