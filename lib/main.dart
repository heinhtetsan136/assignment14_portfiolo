import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MaterialScrollBehavior()
          .copyWith(
            dragDevices: {
              PointerDeviceKind.touch,
              PointerDeviceKind.mouse,
              PointerDeviceKind.trackpad,
            },
          ),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),
      home: Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController =
        ScrollController();
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius:
                            BorderRadius.only(
                              bottomLeft:
                                  Radius.circular(
                                    5,
                                  ),
                              bottomRight:
                                  Radius.circular(
                                    5,
                                  ),
                            ),
                      ),

                      height: 200,
                      width: width,
                      child: Image.network(
                        fit: BoxFit.fill,
                        "https://tse4.mm.bing.net/th/id/OIP.5Jq-eYhfl01GkoQPmQxBZgHaE8?pid=Api&P=0&h=180",
                      ),
                    ),
                    Positioned(
                      left: 20,
                      bottom: -50,
                      child: Container(
                        padding: EdgeInsets.all(
                          4,
                        ),
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage(
                                "assets/person.jpg",
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 70,
                  bottom: 20,
                  left: 20,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment
                              .start,
                      children: [
                        Text(
                          "Hein Htet San",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight:
                                FontWeight.bold,
                          ),
                        ),
                        Text(
                          "@alexjohnson",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding:
                          const EdgeInsets.only(
                            left: 20,
                          ),
                      child: SizedBox(
                        height: 30,
                        width: 120,
                        child: OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                            iconSize: 20,
                            padding:
                                EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadiusGeometry.circular(
                                    8,
                                  ),
                            ),
                          ),
                          onPressed: () {},
                          label: Text("Follow"),
                          icon: Icon(Icons.add),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .spaceEvenly,
                  children: [
                    Details(
                      title: "Followers",
                      subtitle: "10140",
                    ),
                    SizedBox(
                      height: 40,
                      child: VerticalDivider(
                        color: Colors.black26,
                        thickness: 2,
                      ),
                    ),
                    Details(
                      title: "Followings",
                      subtitle: "2350",
                    ),
                    SizedBox(
                      height: 40,
                      child: VerticalDivider(
                        color: Colors.black26,
                        thickness: 2,
                      ),
                    ),
                    Details(
                      title: "Posts",
                      subtitle: "100",
                    ),
                    SizedBox(
                      height: 40,
                      child: VerticalDivider(
                        color: Colors.black26,
                        thickness: 2,
                      ),
                    ),
                    Details(
                      title: "Collections",
                      subtitle: "51",
                    ),
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 20,
                ),
                child: Text(
                  "Contact",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ContactInfo(
                title: "Phone",
                subtitle: "09794810715",
                icon: Icons.phone,
              ),
              ContactInfo(
                title: "Email",
                subtitle:
                    "heinhtetsan136@gmail.com",
                icon: Icons.email,
              ),
              ContactInfo(
                title: "Github",
                subtitle:
                    "https://github.com/heinhtetsan136",
                icon: Icons.phone,
              ),
              Container(
                padding: EdgeInsets.all(20),

                alignment: Alignment.topLeft,

                height: 250,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Education",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.edit),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment
                                .start,
                        children: [
                          Education(
                            title:
                                "Technological University Mandalay",
                            bachelor:
                                "Bachelor of Mechatronics",
                            date:
                                "Feb2013-Mar2019",
                          ),
                          Divider(),
                          Education(
                            title:
                                "Techanological University Mandaly",
                            bachelor:
                                "Bachelor of Technology",
                            date:
                                "Feb2013-Feb2016",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: width,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Project Link",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.add),
                      ],
                    ),
                    Expanded(
                      child: Scrollbar(
                        notificationPredicate:
                            (_) => true,
                        controller:
                            _scrollController,
                        thumbVisibility: true,
                        trackVisibility: true,
                        child: ListView.builder(
                          controller:
                              _scrollController,
                          itemBuilder: (_, index) {
                            return ListTile(
                              leading: Icon(
                                Icons.pages,
                              ),
                              title: Text(
                                "Project ${index + 1}",
                              ),
                              subtitle: Text(
                                "https://github.com/heinhtetsan136.",
                              ),
                            );
                          },
                          itemCount: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Details extends StatelessWidget {
  final String title;
  final String subtitle;

  const Details({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.black45,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}

class Education extends StatelessWidget {
  final String title;
  final String bachelor;
  final String date;

  const Education({
    super.key,
    required this.title,
    required this.bachelor,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.school),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20),
            ),
            Text(bachelor),
            Text(date),
          ],
        ),
      ],
    );
  }
}

class ContactInfo extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const ContactInfo({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      margin: EdgeInsets.only(top: 10),
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white54,
      ),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 15),
              ),
              Text(subtitle),
            ],
          ),
        ],
      ),
    );
  }
}
