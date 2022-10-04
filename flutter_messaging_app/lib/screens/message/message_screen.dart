import 'package:flutter/material.dart';
import 'package:flutter_messaging_app/constants.dart';
import 'package:flutter_messaging_app/screens/message/widgets/body.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            BackButton(),
            CircleAvatar(backgroundImage: AssetImage("assets/images/user_2.png"),),
            SizedBox(width: kDefaultPadding * 0.75,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nguyen Hung Phi",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "Active 3m ago",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.local_phone)),
          IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
          SizedBox(width: kDefaultPadding,),
        ],
      ),
      body: Body(),
    );
  }
}
