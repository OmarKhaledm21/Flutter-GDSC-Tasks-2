import 'package:flutter/material.dart';
import 'ContactCard.dart';
import 'dart:io';

void main() {
  runApp(ContactApp());
}

class ContactApp extends StatelessWidget{
  var name=['Spongebob','Patrick Star','Mr. Krabs'];
  var mail=['hyberactive@mail.com','moneyplease@gmail.com','icecreaaaam@mail.com'];
  var phone=['23456223399','01234600939','5599882277'];
  var img=['assets/spongebob.jpg','assets/basett.png','assets/slt3.jpg'];
  var text=["IAM READY","ICECREAM","MONEY"];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ContactCard(
                  contactName: name[0],
                  contactMail: mail[0],
                  contactNumber: phone[0],
                  img: img[0],
                  text: text[0],
                ),
                ContactCard(
                  contactName: name[1],
                  contactMail: mail[1],
                  contactNumber: phone[1],
                  img: img[1],
                  text: text[1],
                ),
                ContactCard(
                  contactName: name[2],
                  contactMail: mail[2],
                  contactNumber: phone[2],
                  img: img[2],
                  text: text[2],
                ),
              ],
            ),
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }
}
