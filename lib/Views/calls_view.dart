import 'package:flutter/material.dart';
import 'package:whatsapp/models/calls_item_model.dart';
import 'package:whatsapp/helpers/calls_item_helper.dart';

class CallsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: CallsItemHelper.itemCount,
        itemBuilder: (context, index) {
          CallsItemModel callItemModel = CallsItemHelper.getCallItem(index);

          return Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                child: Row(
                  children: <Widget>[
                    showProfileImage(callItemModel.profileAddress),
                    showItemPreView(callItemModel)
                  ],
                ),
              ),
              Divider(
                color: Colors.grey[400],
                indent: 50,
              )
            ],
          );
        });
  }

  Expanded showItemPreView(CallsItemModel callItem) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                callItem.name,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0),
              ),
              Icon(
                callItem.isCall ? Icons.call : Icons.videocam,
                color: Color.fromRGBO(18, 140, 126, 1.0),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Text(
              callItem.dateTime,
              style: TextStyle(color: Colors.black45),
            ),
          )
        ],
      ),
    ));
  }

  Container showProfileImage(String profileAddress) {
    return new Container(
      height: 50.0,
      width: 50.0,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        image: new DecorationImage(
          fit: BoxFit.fill,
          image: new NetworkImage(profileAddress),
        ),
      ),
    );
  }
}
