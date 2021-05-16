import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Recharge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text("Recharge"),
      ),
      body: RechargeFields(),
    );
  }
}

class RechargeFields extends StatefulWidget {
  @override
  _RechargeFieldsState createState() => _RechargeFieldsState();
}

class _RechargeFieldsState extends State<RechargeFields> {
  TextStyle _hintStyle = new TextStyle(
    color: Colors.blue[800],
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );

  TextStyle _hintTextStyle = new TextStyle(
    color: Colors.grey,
    fontSize: 15,
  );

  String _operatorValue;
  String _modeValue;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Customer Name", style: _hintStyle),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: const EdgeInsets.only(left: 10),
                      hintText: "Customer Name",
                      hintStyle: _hintTextStyle),
                ),
              ),
              SizedBox(height: 10),
              Text("Mobile No", style: _hintStyle),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: const EdgeInsets.only(left: 10),
                      hintText: "Mobile Number",
                      hintStyle: _hintTextStyle),
                ),
              ),
              SizedBox(height: 10),
              Text("Amount", style: _hintStyle),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: const EdgeInsets.only(left: 10),
                      hintText: "Amount",
                      hintStyle: _hintTextStyle),
                ),
              ),
              SizedBox(height: 10),
              Text("Operator", style: _hintStyle),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: DropdownButton<String>(
                  focusColor: Colors.white,
                  value: _operatorValue,
                  underline: Container(),
                  isExpanded: true,
                  style: TextStyle(color: Colors.white),
                  iconEnabledColor: Colors.black,
                  items: <String>[
                    'Airtel',
                    'Idea',
                    'Vodafone',
                    'Jio',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value, style: TextStyle(color: Colors.black)),
                    );
                  }).toList(),
                  hint: Text("Please choose a Opeartor", style: _hintTextStyle),
                  onChanged: (String value) {
                    setState(() {
                      _operatorValue = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 10),
              Text("Payment Mode", style: _hintStyle),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: DropdownButton<String>(
                  focusColor: Colors.white,
                  value: _modeValue,
                  underline: Container(),
                  isExpanded: true,
                  style: TextStyle(color: Colors.white),
                  iconEnabledColor: Colors.black,
                  items: <String>[
                    'Cash',
                    'Credit',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(color: Colors.black),
                      ),
                    );
                  }).toList(),
                  hint: Text(
                    "Please choose a Payment Mode",
                    style: _hintTextStyle,
                  ),
                  onChanged: (String value) {
                    setState(() {
                      _modeValue = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                  onPressed: () {
                    print("Recharge Done");
                  },
                  child: Text("Recharge"),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
