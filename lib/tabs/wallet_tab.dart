import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

import '../theme/constanst.dart';
import '../widgets/method_tabbar.dart';
import '../widgets/transaction_method.dart';

class WalletTab extends StatefulWidget {
  const WalletTab({super.key});

  @override
  State<WalletTab> createState() => _WalletTabState();
}

class _WalletTabState extends State<WalletTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          title: Text(
            "Transaction methods",
            style: Constant.mainHeaderText,
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Iconsax.card_add,
                color: iconColor,
              ),
              onPressed: () {
                _buildBottomSheet(context);
              },
            ),
          ]),
      backgroundColor: bgColor,
      body: SingleChildScrollView(
          child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView(children: const [
              TransactionMethod(
                userMoney1: "\$1,200",
                userMoney2: ".00",
                logo: "assets/images/apple.svg",
                methodName: "Apple Pay",
              ),
              SizedBox(
                height: 10,
              ),
              TransactionMethod(
                userMoney1: "\$1,500",
                userMoney2: ".00",
                logo: "assets/images/paypal.svg",
                methodName: "PayPal",
              ),
              SizedBox(
                height: 10,
              ),
              TransactionMethod(
                  userMoney1: "\$500",
                  userMoney2: ".00",
                  logo: "assets/images/google.svg",
                  methodName: "Google Pay"),
              SizedBox(
                height: 10,
              ),
              TransactionMethod(
                  userMoney1: "\$200",
                  userMoney2: ".00",
                  logo: "assets/images/mastercard.svg",
                  methodName: "MasterCard"),
              SizedBox(
                height: 10,
              ),
              TransactionMethod(
                  userMoney1: "\$250",
                  userMoney2: ".00",
                  logo: "assets/images/visa.svg",
                  methodName: "Visa")
            ]),
          ),
        ],
      )),
    );
  }

  Future _buildBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: Colors.white,
        context: context,
        isScrollControlled: true,
        builder: (builder) {
          return Column(
            children: [
              const Icon(
                Icons.minimize,
                size: 30,
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 25,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(children: [
                        Text(
                          "Add a new transaction method",
                          style: Constant.mainHeaderText,
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: SvgPicture.asset(
                              "assets/icons/close.svg",
                              color: Colors.black,
                              height: 24,
                              width: 24,
                            ))
                      ]),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 20,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Amount you can add",
                        style: Constant.secondHeaderText,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: textfieldColor),
                      child: const TextField(
                        keyboardType: TextInputType.number,
                        cursorColor: textButtonColor,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 20,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Select a transaction method",
                            style: Constant.secondHeaderText,
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "About methods",
                              style: Constant.aboutTextButton,
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 450,
                      child: StackOver(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: 350,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: buttonColor),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: buttonColor,
                          ),
                          onPressed: () {},
                          child: Text(
                            "Add a new transaction method",
                            style: Constant.buttonText,
                          )),
                    )
                  ],
                ),
              )
            ],
          );
        });
  }
}
