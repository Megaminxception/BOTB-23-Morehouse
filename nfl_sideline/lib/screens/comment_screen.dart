import 'package:flutter/material.dart';
import 'package:nfl_sideline/services/assets_manager.dart';

class LiveChat extends StatefulWidget {
  const LiveChat({Key? key}) : super(key: key);

  @override
  _LiveChatState createState() => _LiveChatState();
}

class _LiveChatState extends State<LiveChat> {
  final _messageController = TextEditingController();

  List<Map<String, dynamic>> _messages = [
    {
      'username': 'MjFootball03',
      'message': 'TBH that was obviously a flag.😒',
      'imageUrl': 'assets/profile_placeholder.png'
    },
    {
      'username': 'ZachTheMack',
      'message': 'THE COWBOYS SUUUUCK!',
      'imageUrl': 'assets/profile_placeholder.png'
    },
    {
      'username': 'KasaiDaGuy',
      'message': 'That ref is blinder than my hamster',
      'imageUrl': 'assets/profile_placeholder.png'
    },
    {
      'username': 'CALI-flower20',
      'message': 'Go 49ers!!!!',
      'imageUrl': 'assets/profile_placeholder.png'
    },
    {
      'username': '49er4LYFE',
      'message': 'GIT HIM!!!!1!1!',
      'imageUrl': 'assets/profile_placeholder.png'
    },
    {
      'username': 'CowboyzFan',
      'message': 'Im switching teams :(',
      'imageUrl': 'assets/profile_placeholder.png'
    },
    {
      'username': 'GracyDublin59',
      'message': 'CMON WARRRRDDDDD!!!',
      'imageUrl': 'assets/profile_placeholder.png'
    },
    {
      'username': 'user3029932',
      'message': 'What happened??/?',
      'imageUrl': 'assets/profile_placeholder.png'
    },
    {
      'username': 'GrantDaGreat',
      'message': 'Go to sideline 😒😒😒',
      'imageUrl': 'assets/profile_placeholder.png'
    },
  ];

  void _sendMessage(String message) {
    if (message.trim().isEmpty) {
      return;
    }

    setState(() {
      _messages.add({
        'username': 'Me',
        'message': message,
        'imageUrl': 'assets/profile_placeholder.png',
      });
    });

    _messageController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(AssetsManager.chatter),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(_messages[index]['username'],
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                            Text(_messages[index]['message']),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _messageController,
                      decoration:
                          InputDecoration.collapsed(hintText: 'Type a message'),
                      onSubmitted: _sendMessage,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () => _sendMessage(_messageController.text),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
