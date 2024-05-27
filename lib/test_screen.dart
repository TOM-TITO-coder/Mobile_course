
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Flutter Layout',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
      body: _buildUI(),
    );
  }

  Widget _buildUI(){
    return SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Image.network("https://i.natgeofe.com/k/afe51970-80c6-46c3-b047-4c407c72d874/bald-eagle-closeup.jpg"),
            const SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Oeschinen Lake Campground",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Kandersteg, SwitZerland")
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                      SizedBox(width: 10,),
                      Text(
                        "41",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),

                  
                ],
              ),
            ),
            
            const SizedBox(height: 20,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.purple,
                    ),
                    Text(
                      "CALL",
                      style: TextStyle(
                        color: Colors.purple,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.near_me,
                      color: Colors.purple,
                    ),
                    Text(
                      "ROUTE",
                      style: TextStyle(
                        color: Colors.purple,
                      )
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.purple,
                    ),
                    Text(
                      "SHARE",
                      style: TextStyle(
                        color: Colors.purple,
                      )
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Lake Oeschinen lies at the foot of the Blueemlisalp in the Bernese Apls. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. Agondola ride from Kandersteg, followed by a half-hour walk through pastures and pine fores =, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal
                ),
              ),
            ),
          ],
        )
      );
  }
}