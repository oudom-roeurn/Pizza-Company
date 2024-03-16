// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_import

import 'package:design_app_ui/login_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'User Setting',
          style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'Playball-Regular'),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTtVO75a_RAzCZR9biCeJ0eVxTPVOJJvTaK7kwr0Tdlo5TB5F_R7zQs3P4bjhy3f_wmUo&usqp=CAU'),
                          ),
                          title: Text(
                            'Roeurn Oudom',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Arvo-Regular'),
                          ),
                          subtitle: Text('Flutter Developer'),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 30),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Text(
                                    '267',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Text('39', style: TextStyle(fontSize: 18)),
                                  Text('846', style: TextStyle(fontSize: 18)),
                                  Text('846', style: TextStyle(fontSize: 18)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Text('Track', style: TextStyle(fontSize: 18)),
                                  Text('Coupons',
                                      style: TextStyle(fontSize: 18)),
                                  Text('Collect',
                                      style: TextStyle(fontSize: 18)),
                                  Text('Collect',
                                      style: TextStyle(fontSize: 18)),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  circleIcon(),
                  circleIcon(
                    title: 'Delivery',
                    icon: Icons.shopping_bag_outlined,
                    color: Colors.blue,
                  ),
                  circleIcon(
                    title: 'Message',
                    icon: Icons.message,
                    color: Colors.blueAccent,
                  ),
                  circleIcon(
                    title: 'Serivce',
                    icon: Icons.currency_bitcoin,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 85,
                        width: 395,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white),
                        child: Column(children: [
                          ListTile(
                            leading: CircleAvatar(
                                backgroundColor: Colors.blue[200],
                                child: Icon(Icons.location_on)),
                            title: Text('Address'),
                            subtitle: Text('Ensure your harvesting'),
                          ),
                        ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 85,
                        width: 395,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white),
                        child: Column(children: [
                          ListTile(
                            leading: CircleAvatar(
                                backgroundColor: Colors.red[200],
                                child: Icon(Icons.lock_person)),
                            title: Text('Privacy'),
                            subtitle: Text('System permission change'),
                          ),
                        ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 85,
                        width: 395,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white),
                        child: Column(children: [
                          ListTile(
                            leading: CircleAvatar(
                                backgroundColor: Colors.green,
                                child: Icon(Icons.list_outlined)),
                            title: Text('General'),
                            subtitle: Text('Basic function setting'),
                          ),
                        ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 85,
                        width: 395,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white),
                        child: Column(children: [
                          ListTile(
                            leading: CircleAvatar(
                                backgroundColor: Colors.greenAccent,
                                child: Icon(Icons.notifications_on_outlined)),
                            title: Text('Notificaion'),
                            subtitle: Text('Take over the news in time'),
                          ),
                        ]),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Container(
                    //     height: 85,
                    //     width: 395,
                    //     decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(12),
                    //         color: Colors.white),
                    //     child: Column(children: [
                    //       ListTile(
                    //         leading: CircleAvatar(
                    //             backgroundColor: Colors.grey[200],
                    //             child: Icon(Icons.contact_support_sharp)),
                    //         title: Text('Support'),
                    //         subtitle: Text('We are here to help'),
                    //       ),
                    //     ]),
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 85,
                        width: 395,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white),
                        child: Column(children: [
                          ListTile(
                            leading: CircleAvatar(
                                backgroundColor: Colors.grey[200],
                                child: Icon(Icons.output_outlined)),
                            title: Text('Logout'),
                            subtitle: Text(''),
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()),
                                  (route) => false);
                            },
                          ),
                        ]),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget circleIcon({String? title, Color? color, IconData? icon}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Icon(icon ?? Icons.currency_exchange),
              Text(
                title ?? 'Wallet',
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
        height: 90,
        width: 90,
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: color ?? Colors.amberAccent),
      ),
    );
  }
}
