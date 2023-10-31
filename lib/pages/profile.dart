import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  final String name;

  Profile({required this.name});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
            print('Back to previous page');
          },
        ),
        title: Text('Profile'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 75,
              backgroundImage: NetworkImage(
                  'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2022/03/23/1199866265.png'),
            ),

            //sizebox untuk spacing
            SizedBox(
              height: 25,
            ),
            Center(
                child: Text(
              widget.name,
              style: TextStyle(fontSize: 16),
            )),
          ],
        ),
      ),
    );
  }
}
