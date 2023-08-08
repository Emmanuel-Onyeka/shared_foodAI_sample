import 'package:flutter/material.dart';
import '../constants.dart';
import '../widgets/result_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // NavigationBar(
      //   destinations: [
          
      //   ],
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: kBackgroundColor,
                        padding: const EdgeInsets.all(9),
                        child: const Text('Better Search',
                        style: k400TextStyle,),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      icon: const Icon(Icons.info),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.settings),
                      onPressed: () {},
                    ),
                  ],
                ),
                const Divider(
                  color: kBackgroundColor,
                ),
                Text('# Rice and Beans Combo',
                style: k400TextStyle.copyWith(
                  fontSize: 14,
                ),),
                const Divider(
                  color: kBackgroundColor,
                ),
                ListView.builder(
                  itemCount: 7,
                  primary: false,
                  shrinkWrap: true,
                  itemBuilder: (ctx, index) {
                   return SearchResultWidget();
                    // return Expanded(
                    //   child: SearchResultWidget(),
                    // );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
