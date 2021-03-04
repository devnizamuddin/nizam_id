import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: NizamCard(),
  ));
}

class NizamCard extends StatefulWidget {
  @override
  _NizamCardState createState() => _NizamCardState();
}

class _NizamCardState extends State<NizamCard> {
  int programmingDay = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        centerTitle: true,
        title: Text("Nizam Id Card"),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            programmingDay+=1;
          });
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/nizam.jpg"),
                radius: 60,
              ),
            ),
            Divider(
              height: 60,
            ),
            Text(
              "NAME:",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Nizam Uddin",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.amberAccent),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Current Programming Days:",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "$programmingDay",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.amberAccent),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "nshamrat7@gmail.com",
                  style: TextStyle(
                      fontSize: 16, letterSpacing: 1, color: Colors.grey[400]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
