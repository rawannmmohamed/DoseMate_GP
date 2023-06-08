/*import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';

import 'package:flutter_chat_bubble/bubble_type.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_chat_bubble/chat_bubble_clipper.dart';
import 'package:flutter_application_1/screens/Profile_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';


class MentalHealthChatbot extends StatefulWidget {
  @override
  _MentalHealthChatbotState createState() => _MentalHealthChatbotState();
}

class _MentalHealthChatbotState extends State<MentalHealthChatbot> {
  final TextEditingController _textController = new TextEditingController();
  String _userId = FirebaseAuth.instance.currentUser!.uid;
  String? _userName = FirebaseAuth.instance.currentUser!.displayName;

  void _handleSubmitted(String text) async {
    _textController.clear();

    // TODO: Add your chatbot logic here

    setState(() {/* Update chat messages */});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mental Health Chatbot')),
      body: Column(
        children: [
          Flexible(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, int index) => ChatBubble(
                clipper: ChatBubbleClipper3(
                  type: isUserMessage(index) ? BubbleType.sendBubble : BubbleType.receiverBubble,
                ),
                alignment: isUserMessage(index) ? Alignment.topRight : Alignment.topLeft,
                margin: EdgeInsets.symmetric(vertical: 10.0),
                backGroundColor: isUserMessage(index) ? Colors.blue : Colors.grey[300],
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      isUserMessage(index)
                          ? Text(_userName!, style: TextStyle(fontWeight: FontWeight.bold))
                          : Text('Chatbot', style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 5.0),
                      Text(_chatMessages[index].text),
                    ],
                  ),
                ),
              ),
              itemCount: _chatMessages.length,
            ),
          ),
          Divider(height: 1.0),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: <Widget>[
                  Flexible(
                    child: TextField(
                      controller: _textController,
                      onSubmitted: _handleSubmitted,
                      decoration: InputDecoration.collapsed(hintText: 'Send a message'),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () => _handleSubmitted(_textController.text),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool isUserMessage(int index) {
    return _chatMessages[index].userId == _userId;
  }

  final List<ChatMessage> _chatMessages = [
    ChatMessage(text: 'Hello $_userName! How can I assist you today?', userId: 'chatbot'),
    ChatMessage(text: 'I am feeling anxious.', userId: 'user'),
    ChatMessage(text: 'I understand. Have you tried taking deep breaths and doing some relaxation exercises?', userId: 'chatbot'),
    ChatMessage(text: 'Yes, but they don\'t seem to be working.', userId: 'user'),
    ChatMessage(text: 'In that case, I recommend trying some mindfulness meditation techniques. Would you like me to guide you through a short meditation session?', userId: 'chatbot'),
  ];
}
*/