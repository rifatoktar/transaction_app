import 'package:flutter/material.dart';
import 'add_transaction_container.dart';

class StackOver extends StatefulWidget {
  const StackOver({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _StackOverState createState() => _StackOverState();
}

class _StackOverState extends State<StackOver>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            // give the tab bar a height [can change hheight to preferred height]
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
              ),
              child: TabBar(
                controller: _tabController,
                // give the indicator a decoration (color and border radius)
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                  color: const Color(0xff7FCFCA),
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                tabs: const [
                  // first tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Pays',
                  ),

                  // second tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Cards',
                  ),
                ],
              ),
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // first tab bar view widget
                  SingleChildScrollView(
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 10,
                        ),
                        AddTransaction(
                          logo: 'assets/images/apple.svg',
                          methodName: 'Apple Pay',
                        ),
                        SizedBox(height: 10),
                        AddTransaction(
                            logo: "assets/images/paypal.svg",
                            methodName: "PayPal"),
                        SizedBox(height: 10),
                        AddTransaction(
                            logo: "assets/images/google.svg",
                            methodName: "Google Pay"),
                      ],
                    ),
                  ),

                  // second tab bar view widget
                  SingleChildScrollView(
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 10,
                        ),
                        AddTransaction(
                          logo: 'assets/images/mastercard.svg',
                          methodName: 'MasterCard',
                        ),
                        SizedBox(height: 10),
                        AddTransaction(
                            logo: "assets/images/visa.svg", methodName: "Visa"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
