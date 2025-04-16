 import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            ' We are so grady to see your trust on us welcome and for more information see us by:-'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Text(
          'contact us',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold),
          ),
         SizedBox(height: 20),
          Text('Company Name: AGRO TOMATO PLANTER',
          style: TextStyle(fontSize: 18),
      ),
      SizedBox(height: 10),
      Text('Email:contact@teantomatoplantergmail.com',
      style: TextStyle(fontSize: 18),
    ),
    SizedBox(height: 10),
    Text('phone:+255 613 804 952',
    style: TextStyle(fontSize: 18),
    ),
    SizedBox(height: 10), Text(
    'Address:112 London,Dar es salaam,Tanzania',
    style: TextStyle(fontSize: 18),
    ),
        ],
    ),
      ),
    );
  }
}
