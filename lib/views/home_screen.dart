import 'package:flutter/material.dart';
import 'package:j_one/views/login.dart';
import 'package:j_one/views/recharge.dart';

class HomeScreen extends StatelessWidget {
  Widget _logOut(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Login(),
          ),
        );
      },
      child: Center(
        child: Text("Logout"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.blue[800],
        actions: <Widget>[
          _logOut(context),
          SizedBox(width: 10),
        ],
      ),
      body: HomeScreenFields(),
    );
  }
}

// ignore: must_be_immutable
class HomeScreenFields extends StatelessWidget {
  TextStyle _walletStyle = new TextStyle(
    color: Colors.blue[900],
    fontWeight: FontWeight.bold,
  );

  TextStyle _nameStyle = new TextStyle(
    color: Colors.blue[900],
    fontWeight: FontWeight.bold,
    fontSize: 15,
  );

  TextStyle _amountStyle = new TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  TextStyle _successStyle = new TextStyle(
    color: Colors.green,
    fontWeight: FontWeight.bold,
  );

  Widget card({
    String name,
    String phoneNumber,
    String amount,
    String mode,
  }) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                name,
                style: _nameStyle,
              ),
              Text(
                "\u20B9 $amount",
                style: _amountStyle,
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("+91 $phoneNumber"),
              Text(
                mode,
                style: _successStyle,
              ),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.wallet_giftcard,
                      color: Colors.blue[900],
                    ),
                  ),
                  Text(
                    "Wallet Balance : \u20B9 4999",
                    style: _walletStyle,
                  ),
                  GestureDetector(
                    onTap: () {
                      print("Add money");
                    },
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue[900])),
                      child: Text(
                        "Add Money",
                        style: TextStyle(fontSize: 10, color: Colors.blue[900]),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Recharge(),
                      ),
                    );
                  },
                  child: Text("Recharge"),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Recent Payments",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
              )),
        ),
        SizedBox(height: 5),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: ListView(
              padding: const EdgeInsets.only(top: 10),
              children: <Widget>[
                card(
                    name: "Nirmal",
                    phoneNumber: "8100000000",
                    amount: "99",
                    mode: "Cash"),
                card(
                    name: "Jabir",
                    phoneNumber: "8187878787",
                    amount: "99",
                    mode: "Credit"),
                card(
                    name: "Nirmal",
                    phoneNumber: "8100000000",
                    amount: "99",
                    mode: "Cash"),
                card(
                    name: "Jabir",
                    phoneNumber: "8187878787",
                    amount: "99",
                    mode: "Credit"),
                card(
                    name: "Nirmal",
                    phoneNumber: "8100000000",
                    amount: "99",
                    mode: "Cash"),
                card(
                    name: "Jabir",
                    phoneNumber: "8187878787",
                    amount: "99",
                    mode: "Credit"),
                card(
                    name: "Nirmal",
                    phoneNumber: "8100000000",
                    amount: "99",
                    mode: "Cash"),
                card(
                    name: "Jabir",
                    phoneNumber: "8187878787",
                    amount: "99",
                    mode: "Credit"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
