import 'package:flutter/material.dart';
import 'package:flutter_messaging_app/constants.dart';
import 'package:flutter_messaging_app/models/ChatMessage.dart';
import 'package:flutter_messaging_app/screens/message/widgets/audio_message.dart';
import 'package:flutter_messaging_app/screens/message/widgets/status_message_dot.dart';
import 'package:flutter_messaging_app/screens/message/widgets/text_message.dart';
import 'package:flutter_messaging_app/screens/message/widgets/video_message.dart';

class Message extends StatelessWidget {
  const Message({Key? key, required this.message}) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {

    Widget messageContain(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);
          break;
        case ChatMessageType.audio:
          return AudioMessage(message: message);
          break;
        case ChatMessageType.video:
          return VideoMessage(message: message);
          break;
        default:
          return SizedBox();
      }
    }

    return Padding(
      padding: EdgeInsets.only(top: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment:
        message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage("assets/images/user_2.png"),
            ),
            SizedBox(width: kDefaultPadding / 2,),
          ],
          messageContain(message),
          if (message.isSender) MessageStatusDot(status: message.messageStatus,),
        ],
      ),
    );
  }
}



