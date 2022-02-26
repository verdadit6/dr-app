import 'package:dr_app/dr_container.dart';
import 'package:dr_app/main_page.dart';
import 'package:dr_app/patient_container.dart';
import 'package:dr_app/video_call.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          elevation: 0,
          title: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDuqBSFPr-wpF76M8pTCEPIbXMAiXW4zp3_w&usqp=CAU",
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dr. Navida",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        Icons.online_prediction,
                        color: Colors.green,
                      ),
                      Text(
                        "online",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 70),
              CircleAvatar(
                backgroundColor: Colors.indigo[900],
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return VideoCall();
                    }));
                  },
                  icon: Icon(
                    Icons.video_call,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(width: 20),
              CircleAvatar(
                backgroundColor: Colors.indigo[900],
                child: Icon(
                  Icons.call,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return MainPage();
              }));
            },
            icon: Icon(
              Icons.navigate_before,
              size: 40,
              color: Colors.grey[800],
            ),
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.grey[100],
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        DrContainer(
                          height: 107,
                          msg: """
Use the stick on other
side fandit
                                   """,
                          time: "08:20",
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 20),
                        PatientContainer(
                          height: 61,
                          width: 200,
                          msg: "Thanks Doc",
                          time: "08:29",
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Container(
                          color: Colors.grey,
                          height: 2,
                          width: 140,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 25,
                            right: 25,
                          ),
                          child: Text(
                            "Today",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.grey,
                          height: 2,
                          width: 140,
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        DrContainer(
                          height: 153,
                          msg: """
Morning!

how the result,did it
work well?
                                   """,
                          time: "08:20",
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(width: 30),
                        PatientContainer(
                          height: 107,
                          width: 310,
                          msg: """
Morning doc,the problem is
solved.Thanks doc
             """,
                          time: "08:26",
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTegEUe9qp-tGJNXLqaCYoLvKiD_JyQZHryJ5v_LPV6aVB3nQ98L4nQ8GEgBtfIKlsw4c4&usqp=CAU",
                              ),
                            ),
                          ),
                          height: 200,
                          width: 200,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 60,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(
                    Icons.send,
                    color: Colors.indigo[900],
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Type Something...",
                  hintStyle: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
