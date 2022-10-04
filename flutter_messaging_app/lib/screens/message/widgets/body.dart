import 'package:flutter/material.dart';
import 'package:flutter_messaging_app/constants.dart';
import 'package:flutter_messaging_app/models/ChatMessage.dart';
import 'package:flutter_messaging_app/screens/message/widgets/chat_input_field.dart';
import 'package:flutter_messaging_app/screens/message/widgets/message.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
              itemCount: demeChatMessages.length,
              itemBuilder: (context, index) => Message(
                message: demeChatMessages[index],
              ),
            ),
          ),
        ),
        ChatInputField(),
      ],
    );
  }
}


