import 'package:flutter/material.dart';
import 'models/contact.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => Center(
        child: Column(
          children: <Widget>[
            const Divider(
              height: 10.0,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/5.jpg'),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    dummyData[i].name,
                    style: new TextStyle(fontWeight: FontWeight.bold),
                  ),
                  new Text(
                    dummyData[i].time,
                    style: new TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                ],
              ),
              subtitle: Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: new Text(
                  dummyData[i].message,
                  style: new TextStyle(color: Colors.grey, fontSize: 15.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
