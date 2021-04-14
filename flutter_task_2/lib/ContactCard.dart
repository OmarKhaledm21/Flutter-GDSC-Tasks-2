import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget{
  String contactName,contactMail,contactNumber,img,text;
  ContactCard({
    this.contactName,
    this.contactMail,
    this.contactNumber,
    this.img,
    this.text
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 400,
      height: 150,
      margin: EdgeInsets.symmetric(vertical: 15.0),
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage(img)
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.contactName,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.mail,color: Colors.white,),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        this.contactMail,
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.phone,color: Colors.white,),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        this.contactNumber,
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      child: Icon(Icons.favorite,color: Colors.red,),
                    ),
                    Container(
                      child: Icon(Icons.favorite,color: Colors.white,),
                    ),
                    Container(
                      child: Icon(Icons.favorite,color: Colors.black,),
                    ),
                    Container(
                      child: Icon(CupertinoIcons.tag,color: Colors.black,),
                      padding: EdgeInsets.only(left: 9),
                    ),
                    Container(
                      child: Text(text),
                      padding: EdgeInsets.only(left: 3),
                    ),
                    Container(
                      child: Icon(CupertinoIcons.trash,color: Colors.white,),
                      padding: EdgeInsets.only(left: 17),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0,top: 65.0,right: 40.0),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
    throw UnimplementedError();
  }
}