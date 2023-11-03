import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Column(
            children: [
              Material(
                elevation: 2,
                color: Colors.white,
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: TabBar(
                    labelColor: Colors.yellow[900],
                    indicatorColor: Colors.yellow[900],
                    unselectedLabelColor: Colors.black38,
                    labelStyle: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w500),
                    isScrollable: true,
                    labelPadding: const EdgeInsets.symmetric(horizontal: 10),
                    tabs: const [
                      Tab(text: 'BLACK FRIDAY'),
                      Tab(text: 'EXPLORE'),
                      Tab(text: 'FOLLOWING'),
                    ],
                  ),
                ),
              ),

              // TODO: ALLOW SLIDE SCROLLING OF APPBAR
              const Expanded(
                child: TabBarView(children: [
                  Center(child: Text('Black Friday context')),
                  Center(child: Text('Explorer context')),
                  Center(child: Text('Following context')),
                ]),
              ),
            ],
          ),
        ));
  }
}
