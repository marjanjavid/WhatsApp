import 'package:flutter/material.dart';

Widget chatSendMessage()
{
  final Color whatsAppGreen = Colors.teal[800];

  final ClipRRect roundedContainer = ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            SizedBox(width: 8.0),
            Icon(Icons.insert_emoticon,
                size: 30.0, color: Colors.grey),
            SizedBox(width: 8.0),
            Expanded(
              child: TextField(
                cursorColor: whatsAppGreen,
                decoration: InputDecoration(
                  hintText: 'Type a message',
                  border: InputBorder.none,
                ),
              ),
            ),
            Icon(Icons.attach_file,
                size: 30.0, color: Colors.grey),
            SizedBox(width: 8.0),
            Icon(Icons.camera_alt,
                size: 30.0, color: Colors.grey),
            SizedBox(width: 8.0),
          ],
        ),
      ),
    );

  return  Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: roundedContainer,
          ),
          SizedBox(
            width: 5.0,
          ),
          GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: whatsAppGreen,
              child: Icon(Icons.mic, color: Colors.white),
            ),
          ),
        ],
      ),
    );     
}