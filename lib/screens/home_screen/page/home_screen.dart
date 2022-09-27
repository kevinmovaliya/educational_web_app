import 'package:educational_web_app/screens/web_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Educational App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Educational web.!",
              style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EducationalWebScreen(),
                      settings: RouteSettings(
                        arguments: "https://www.wikipedia.org/",
                      )),
                );
              },
              child: Text("Wikipedia"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EducationalWebScreen(),
                      settings: RouteSettings(
                        arguments: "https://www.w3schools.com/",
                      )),
                );
              },
              child: Text("W3Schools"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EducationalWebScreen(),
                      settings: RouteSettings(
                        arguments: "https://www.javatpoint.com/",
                      )),
                );
              },
              child: Text("JavaTpoint"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EducationalWebScreen(),
                    settings: RouteSettings(
                        arguments: "https://www.tutorialspoint.com/index.htm"),
                  ),
                );
              },
              child: Text("TutorialsPoint"),
            ),
          ],
        ),
      ),
    );
  }
}
