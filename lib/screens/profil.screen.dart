import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
    bool isSignedIn = false;
    String fullName = "";
    String userName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: [
                Container(
                    height :200,
                    width: double.infinity,
                    color: Colors.deepPurple,
                ),
                Column(
                    children: [
                        Stack(
                            alignment: AlignmentGeometry.bottomRight,
                            children: [
                                Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(width: 2,color: Colors.purple),
                                        shape: BoxShape.circle
                                    ),
                                    child: const CircleAvatar(
                                        radius: 50,
                                        backgroundImage: AssetImage('images/placeholder_image.png')
                                        ),
                                    ),
                                    if (isSignedIn)
                                    IconButton(onPressed: () {

                                    },
                                    icon: Icon(Icons.camera_alt,color: Colors.deepPurple,),
                                ),
                            ],
                        ),
                    ],
                ),
            ],
        ),
    );
  }
}