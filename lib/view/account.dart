import 'package:flutter/material.dart';
import 'package:zcommerce/widgets/added_card.dart';
import 'package:zcommerce/widgets/custom_title.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            Container(
              color: Colors.white,
              width: double.infinity,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 13.0, vertical: 8),
                    child: Icon(
                      Icons.account_balance_wallet,
                      color: Colors.blue[900],
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Login to see your balance",
                      style: TextStyle(
                        color: Colors.blue[900],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                height: 420,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      const AddedCards(title: "MY JUMIA ACCOUNT", childern: [
                        CustomListTile(
                          title: "Orders",
                          iconData: Icons.card_giftcard,
                        ),
                        CustomListTile(
                          title: "Inbox",
                          iconData: Icons.mail_outline,
                        ),
                        CustomListTile(
                          title: "Pending Reviews",
                          iconData: Icons.reviews_outlined,
                        ),
                        CustomListTile(
                          title: "Vouchers",
                          iconData: Icons.local_activity,
                        ),
                        CustomListTile(
                          title: "Saved Items",
                          iconData: Icons.favorite_outline,
                        ),
                        CustomListTile(
                          title: "Follow Seller",
                          iconData: Icons.store,
                        ),
                        CustomListTile(
                          title: "Recently Viewed",
                          iconData: Icons.history,
                        ),
                        CustomListTile(
                          title: "Recently Searched",
                          iconData: Icons.search,
                        )
                      ]),
                      const SizedBox(height: 8),
                      const AddedCards(title: 'MY SETTINGS', childern: [
                        CustomListTile(title: 'Address Book'),
                      ]),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'LOGIN',
                              style: TextStyle(color: Colors.yellow[900]),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
