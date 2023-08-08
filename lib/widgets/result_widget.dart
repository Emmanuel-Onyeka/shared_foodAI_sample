import 'package:flutter/material.dart';
import 'package:shared_food_ai/constants.dart';
import './reply_widget.dart';

class SearchResultWidget extends StatefulWidget {
  SearchResultWidget({super.key});

  @override
  State<SearchResultWidget> createState() => _SearchResultWidgetState();
}

class _SearchResultWidgetState extends State<SearchResultWidget> {
  bool showReply = false;

  final List<String> images = [
    'assets/images/avi.jpg',
    'assets/images/meal.jpg',
  ];

  final List<String> comments = [
    'Alots can be done, I agree with you.',
    'Not all ideas can be well shared when reading.',
    "I can’t agree to all your ideas and i want you to always remember that.",
    'Alots can be done, I agree with you.',
    'As for me i currently prefer watching the info rather than reading about. Thanks.',
  ];

  List<String> userName = [
    'Gloria',
    'Charles58',
    'Kunle',
    'Chef Hammer',
    'Charles58',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 17,
                  child: Image.asset(images[0]),
                ),
                const SizedBox(
                  width: 7,
                ),
                const Text(
                  'Charlse58 \u{2022}',
                  style: k400TextStyle,
                ),
                const Text(
                  ' Oct 1',
                  style: k300TextStyle,
                )
              ],
            ),
            ListTile(
              horizontalTitleGap: 5,
              minVerticalPadding: 0,
              title: const Text(
                'The time to learn cooking skills is now. for beans and plantain',
                style: k700TextStyle,
              ),
              trailing: Image(
                image: AssetImage(images[1]),
                fit: BoxFit.fitWidth,
                height: 52,
                width: 56,
              ),
            ),
            // Row(
            //   children: [
            //     LimitedBox(
            //       maxWidth: MediaQuery.of(context).size.width * 0.7,
            //       child: const Text(
            //         'The time to learn cooking skills is now. for beans and plantain',
            //       ),
            //     ),
            //     const SizedBox(
            //       width: 10,
            //     ),
            //     Image(
            //       image: AssetImage(images[1]),
            //       fit: BoxFit.fitWidth,
            //       height: 52,
            //       width: 56,
            //     ),
            //   ],
            // ),
            Row(
              children: [
                IconButton(
                  iconSize: 14,
                  onPressed: () {},
                  icon: const Icon(Icons.thumb_up_outlined),
                ),
                IconButton(
                  iconSize: 14,
                  onPressed: () {},
                  icon: const Icon(Icons.thumb_down_outlined),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      showReply = true;
                    });
                  },
                  child: const Text(
                    'Reply',
                    style: k400TextStyle,
                  ),
                ),
              ],
            ),
          ],
        ),
        if (showReply)
          Container(
            color: kBackgroundColor,
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 13,
                  child: ClipOval(
                    child: Image.asset(images[0]),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  'Add a reply...',
                  style: k400TextStyle,
                ),
              ],
            ),
          ),
          const SizedBox(
                  width: 10,
                ),
        Visibility(
          visible: showReply,
          child: ListView.builder(
              itemCount: 5,
              primary: false,
              shrinkWrap: true,
              // physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (ctx, index) {
                return ReplyWidget(
                  userName: userName[index],
                  replyText: comments[index],
                );
              },),
        ),
        const Divider(
          color: kBackgroundColor,
        ),
      ],
    );
  }
}
