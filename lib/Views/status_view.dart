import 'package:flutter/material.dart';
import 'package:whatsapp/models/status_item_model.dart';
import 'package:whatsapp/helpers/status_item_helper.dart';

class StatusView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: StatusItemHelper.itemCount,
        itemBuilder: (context, index) {
          StatusItemModel statusItemModel =
              StatusItemHelper.getStatusItem(index);

          return Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                child: Row(
                  children: <Widget>[
                    showProfileImage(statusItemModel.profileAddress),
                    showItemPreView(
                        statusItemModel.name, statusItemModel.dateTime)
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

  Expanded showItemPreView(String name, String dateTime) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.0),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Text(
              dateTime,
              style: TextStyle(color: Colors.black45, fontSize: 16.0),
            ),
          ),
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
