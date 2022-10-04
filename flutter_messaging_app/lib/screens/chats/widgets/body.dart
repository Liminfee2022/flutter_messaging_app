import 'package:flutter/material.dart';
import 'package:flutter_messaging_app/constants.dart';
import 'package:flutter_messaging_app/models/Chat.dart';
import 'package:flutter_messaging_app/screens/chats/widgets/chat_card.dart';
import 'package:flutter_messaging_app/screens/message/message_screen.dart';
import 'package:flutter_messaging_app/widgets/filled_outline_button.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(
                press: () {},
                text: "Recent Message",
              ),
              SizedBox(
                width: kDefaultPadding,
              ),
              FillOutlineButton(
                press: () {},
                text: "Active",
                isFilled: false,
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MessageScreen()));
              },
            ),
          ),
        ),
      ],
    );
  }
}

