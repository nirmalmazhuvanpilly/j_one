import 'package:flutter/material.dart';

class RechargeDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text("Recharge Deatils"),
      ),
      body: RechargeDetailsFields(),
    );
  }
}

class RechargeDetailsFields extends StatelessWidget {
  final TextStyle _headerStyle = new TextStyle(
    color: Colors.grey,
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );

  final TextStyle _footerStyle = new TextStyle(
    color: Colors.blue[800],
    fontWeight: FontWeight.bold,
  );

  Widget rowField({
    String header,
    String footer,
    IconData icon,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(header, style: _headerStyle),
            Text(footer, style: _footerStyle),
          ],
        ),
        Icon(icon, color: Colors.orange[300]),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              rowField(
                header: "Customer Name",
                footer: "Nirmal",
                icon: Icons.verified_user,
              ),
              Divider(),
              rowField(
                header: "Mobile Number",
                footer: "8129656368",
                icon: Icons.phone_android,
              ),
              Divider(),
              rowField(
                header: "Amount",
                footer: "99",
                icon: Icons.money,
              ),
              Divider(),
              rowField(
                header: "Operator",
                footer: "Airtel",
                icon: Icons.satellite,
              ),
              Divider(),
              rowField(
                header: "Payment Mode",
                footer: "Cash",
                icon: Icons.payment,
              ),
              Divider(),
              rowField(
                header: "Recharge Date",
                footer: "27/12/2021",
                icon: Icons.calendar_today,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.orange,
            ),
            onPressed: () {
              print("Delete Clicked");
            },
            child: Text("Delete"),
          ),
        )
      ],
    );
  }
}
