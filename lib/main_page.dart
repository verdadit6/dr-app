import 'package:dr_app/chat_page.dart';
import 'package:dr_app/custom_container.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  String text = "Read More";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 210,
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Row(
                        children: [
                          SizedBox(width: 10),
                          Icon(
                            Icons.navigate_before,
                            size: 40,
                            color: Colors.grey[800],
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Text(
                            "Dr.Roman R",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Text(
                            "Skin Care Specialist",
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Row(
                            children: [
                              SizedBox(width: 20),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Ratings",
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    "4.5 from 5",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              SizedBox(width: 20),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Icon(
                                  Icons.people_alt,
                                  color: Colors.indigo[900],
                                ),
                              ),
                              SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Patient",
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    "120+",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcv-8DM2L-Uu1OJo6BZt4_SHZeu8NhKGWOpg&usqp=CAU",
                            ),
                          ),
                        ),
                        height: MediaQuery.of(context).size.height / 2 - 20,
                        width: 200,
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height / 2,
                          width: 200,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                            colors: [
                              Colors.grey[100]!,
                              Colors.white.withOpacity(0),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                          ))),
                    ],
                  )),
            ],
          ),
          Expanded(
              child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 20),
                    Text(
                      "Biography",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Stack(
                      children: [
                        Text(
                          """
Dr.Roman Reigns recieved his specialist degree 
after completing his education at the university
of indonesia...
                       """,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 16,
                          ),
                        ),
                        Positioned(
                          top: 25,
                          left: 100,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Read More",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo[900],
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Text(
                      "Schedule",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 70,
                      width: 70,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "18",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "thu",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    CustomContainer(text: "17"),
                    SizedBox(width: 20),
                    CustomContainer(text: "18"),
                    SizedBox(width: 20),
                    CustomContainer(text: "19"),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 60,
                      width: 370,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          primary: Colors.indigo[900],
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return ChatPage();
                          }));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Make an Appointment",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Stack(
                              children: [
                                Icon(Icons.navigate_next),
                                Positioned(
                                  left: 5,
                                  child: Icon(
                                    Icons.navigate_next,
                                    color: Colors.indigo[200],
                                  ),
                                ),
                                Positioned(
                                  left: 10,
                                  child: Icon(
                                    Icons.navigate_next,
                                    color: Colors.indigo[300],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.grey[100],
            ),
          ))
        ],
      ),
    );
  }
}
