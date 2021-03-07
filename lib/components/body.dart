import 'package:chat/components/filled_outline_button.dart';
import 'package:chat/constants.dart';
import 'package:chat/models/Chat.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

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
              FillOutlineButton(press: () {}, text: 'Recent Message'),
              SizedBox(
                width: kDefaultPadding,
              ),
              FillOutlineButton(
                press: () {},
                text: 'Active',
                isFilled: false,
              )
            ],
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: chatsData.length,
                itemBuilder: (context, index) =>
                    ChatCard(chat: chatsData[index])))
      ],
    );
  }
}

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key key,
    this.chat,
  }) : super(key: key);

  final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding * 0.75),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage(chat.image),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chat.name,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(chat.lastMessage, maxLines: 1, overflow: TextOverflow.ellipsis ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
