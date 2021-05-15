import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.blue[800],
        actions: <Widget>[
          Center(child: Text("Logout")),
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

  Widget card() {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Nirmal",
                style: _nameStyle,
              ),
              Text(
                "\u20B9 99",
                style: _amountStyle,
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("+91 8129656368"),
              Text(
                "Success",
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
                  child: Text(
                    "Recharge",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                  onPressed: () {},
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
                card(),
                card(),
                card(),
                card(),
                card(),
                card(),
                card(),
                card(),
                card(),
                card(),
                card(),
                card(),
                card(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
