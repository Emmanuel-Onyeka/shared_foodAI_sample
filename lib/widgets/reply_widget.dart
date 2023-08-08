import 'package:flutter/material.dart';
import '../constants.dart';

class ReplyWidget extends StatelessWidget {
  final String userName;
  final String replyText;

  ReplyWidget({
    required this.userName,
    required this.replyText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width * 0.75,
      alignment: Alignment.centerRight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                '@$userName',
                style: k400TextStyle,
              ),
              Text(
                replyText,
                style: k700TextStyle,
              ),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.75,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                padding: null,
                onPressed: () {},
                icon: const Icon(
                  Icons.thumb_up_outlined,
                  size: 12,
                ),
              ),
              IconButton(
                iconSize: 12,
                onPressed: () {},
                icon: const Icon(
                  Icons.thumb_down_outlined,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Reply',
                  style: k400TextStyle,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
