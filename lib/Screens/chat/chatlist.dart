import 'package:cached_network_image/cached_network_image.dart';
import 'package:soul_meet_num/Screens/commons/constData.dart';
import 'package:flutter/material.dart';
import 'package:soul_meet_num/pages/chat_page.dart';

class ChatList extends StatefulWidget {
  @override State<StatefulWidget> createState() => _ChatList();
}

class _ChatList extends State<ChatList> with AutomaticKeepAliveClientMixin<ChatList>{

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.fromLTRB(4.0,10,4,10),
      children: <Widget>[
        ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.network(chat1Image,
              height: 80,
              fit: BoxFit.cover,
              width: 60),
          ),
          title: Text('Luna'),
          subtitle: Text('Hey ! What is up?'),
          trailing: Padding(
            padding: const EdgeInsets.fromLTRB(4,8,4,4),
            child: Column(
              children: <Widget>[
                Text('Mar 11'),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,8,0,0),
                  child: CircleAvatar(
                    radius: 9,
                    child: Text('N',style: TextStyle(fontSize: 12),),
                    backgroundColor: Colors.red[400],
                    foregroundColor: Colors.white,
                  )
                ),
              ],
            ),
          ),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage()))
        ),
        Divider(),
        ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child:
            CachedNetworkImage(
              imageUrl: chat2Image,
              placeholder: (context, url) => Container(
                transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                child: Container(
                  width: 60,
                  height: 80,
                  child: Center(child: new CircularProgressIndicator(color: Color(0xFFFFC700)))),
              ),
              errorWidget: (context, url, error) => new Icon(Icons.error),
              width: 60,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          title: Text('Kim'),
          subtitle: Text('I will go to home now'),
          trailing: Padding(
            padding: const EdgeInsets.fromLTRB(4,8,4,4),
            child: Column(
              children: <Widget>[
                Text('Mar 06'),
              ],
            ),
          ),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage()))
         ),
        Divider(),
      ],
    );
  }
}