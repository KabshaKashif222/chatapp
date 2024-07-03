import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'New Whatsapp',
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF171717),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 70, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 7),
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Messages",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                    SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Online",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                    SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Groups",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                    SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "More",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                    SizedBox(
                      width: 35,
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
              top: 190,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(left: 25, top: 15, right: 25),
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Favourite Contacts',
                          style: TextStyle(color: Colors.white),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 90,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          buildcontactAvetar('Khadija', '1.jpg.jpg'),
                          buildcontactAvetar('Kabsha', '2.jpg'),
                          buildcontactAvetar('Hafsa', '3.jpg'),
                          buildcontactAvetar('Riffat', '4.jpg'),
                          buildcontactAvetar('Fatima', '5.jpg'),
                          buildcontactAvetar('Bareera', '6.jpg'),
                          buildcontactAvetar('Mirha', '7.jpg'),
                          buildcontactAvetar('Ania', 'post_1.jpg.jpg'),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ),
            Positioned(
              top: 365,
              left: 0,
              right: 0,
              bottom: 0,
              child:
             Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
              ),
              child: ListView(
                padding: EdgeInsets.only(left: 25),
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              useravetar(filename: '1.jpg.jpg'),
                              SizedBox(width: 15,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                    Text(
                              'Khadija',
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(height: 5,),
                              Text(
                              'Hello! how are you',
                              style: TextStyle(color: Colors.black),
                            ),
                                ],
                              )
                            ],
                          ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, right: 25),
                          child: Column(
                            children: [
                              Text('16:35', style: TextStyle(fontSize:10 ),),
                              SizedBox(height: 15,),
                              CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.cyan,
                                child: Text('2', style: TextStyle(fontSize: 10, color: Colors.white),),
                              )
                            ],
                          ),
                        )
                        ],
                      ),
                    Divider(
                      indent: 70,
                    ),

                    ],
                  )
                ],
              ),
            ))
        ],
      ),
    );
  }

  Padding buildcontactAvetar(String name, String filename) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          useravetar(
            filename: filename,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(color: Colors.white, fontSize: 14),
          )
        ],
      ),
    );
  }
}

class useravetar extends StatelessWidget {
  final String filename;

  const useravetar({
    super.key,
    required this.filename,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 29,
        backgroundImage: AssetImage("images/$filename"),
      ),
    );
  }
}
