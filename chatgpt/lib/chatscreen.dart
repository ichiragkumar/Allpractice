import 'package:/flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  Widget _buildTextComposer(){
    return Row(
      children:  [
        const Expanded(
          child: TextField(
            decoration: InputDecoration(),
          )
        )
      ],
    );

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        appBar: AppBar(title: Center(child: Text("Chat Gpt",))),

        body: Column(
          children: const [
            Container(
              decoration: BoxDecoration(
                color: context.cardColor,

              ),
              child: _buildTextComposer(),
            )
          ],
        )




      )
      
      
      
      );



  }
}