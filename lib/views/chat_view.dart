import 'package:flutter/material.dart';
import 'package:simple_chat/models/message_model.dart';
import 'package:simple_chat/widgets/chat_bubble.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  static String id = 'ChatView';

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  CollectionReference messages =
      FirebaseFirestore.instance.collection('messages');

  TextEditingController messageController = TextEditingController();
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments;
    return StreamBuilder<QuerySnapshot>(
      stream: messages.orderBy('created at', descending: true).snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Message> messagesList = [];
          for (int i = 0; i < snapshot.data!.docs.length; i++) {
            messagesList.add(Message.fromJson(snapshot.data!.docs[i]));
          }
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'User',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
              elevation: 0,
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      reverse: true,
                      controller: controller,
                      itemCount: messagesList.length,
                      itemBuilder: (context, int) {
                        return messagesList[int].id == email
                            ? ChatBubble(
                                message: messagesList[int],
                              )
                            : ChatBubbleForFriend(message: messagesList[int]);
                      }),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: TextField(
                    onSubmitted: (value) {
                      messages.add({
                        'messages': value,
                        'created at': DateTime.now(),
                        'id': email,
                      });
                      messageController.clear();
                      controller.animateTo(
                        0,
                        duration: Duration(seconds: 1),
                        curve: Curves.fastOutSlowIn,
                      );
                    },
                    controller: messageController,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.send),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return Text('Loading');
        }
      },
    );
  }
}
