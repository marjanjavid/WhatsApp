import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget chatRoomAppBar(String avatar, String name) {
  final Color whatsAppGreen = Colors.teal[800];
  final avatarRadius = 20.0;
  final defaultIconButtonPadding = 8.0;
  final leftOffset = -25.0;
  final titleLineHeight = 2.0;

  return AppBar(
    title: SizedBox(
      width: double.infinity, //mimic a Row with maximised width,
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Positioned(
            left: leftOffset,
            top: defaultIconButtonPadding,
            child: CircleAvatar(
              radius: avatarRadius,
              backgroundImage: NetworkImage(avatar),
            ),
          ),
          Positioned(
              left: leftOffset + avatarRadius * 2 + 8.0,
              top:
                  defaultIconButtonPadding + avatarRadius / 2 - titleLineHeight,
              child: Text(name))
        ],
      ),
    ),
    backgroundColor: whatsAppGreen,
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 24.0),
        child: Icon(Icons.videocam),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Icon(Icons.call),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Icon(Icons.more_vert),
      ),
    ],
  );
}
