// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import 'dart:async';

const double _ICON_SIZE = 30;
final player = AudioPlayer();

class Voice extends StatelessWidget {
  Voice({super.key});

  @override
  Widget build(BuildContext context) {
    _initializeLocalConvos();
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text("Voice Zone"),
      ),
      body: ListView.builder(
        itemCount: _Conversation.conversations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Card(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    width: double.infinity,
                    color: Colors.blue[200],
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Text(
                        _Conversation.conversations[index]._conversationTitle,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        iconSize: _ICON_SIZE,
                        icon: Icon(Icons.start),
                        onPressed: () {
                          player.play(AssetSource(_Conversation
                              .conversations[index]._assertSource));
                        },
                      ),
                      IconButton(
                        iconSize: _ICON_SIZE,
                        icon: Icon(Icons.stop),
                        onPressed: () {
                          player.stop();
                        },
                      ),
                      IconButton(
                        iconSize: _ICON_SIZE,
                        icon: Icon(Icons.pause),
                        onPressed: () {
                          player.pause();
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _Conversation {
  static List<_Conversation> conversations = [];
  String _conversationTitle = "PartName";
  String _assertSource = "voice/test.mp3";

  _Conversation({
    required String conversationTitle,
    String assertSource = "voice/test.mp3",
  }) {
    _conversationTitle = conversationTitle;
    _assertSource = assertSource;
    conversations.add(this);
  }
}

void _initializeLocalConvos() {
  _Conversation.conversations.clear();
  _Conversation aConvo = _Conversation(
    conversationTitle: "Conversation 1 : I'm Hungry",
    assertSource: "voice/1.mp3",
  );
  _Conversation bConvo = _Conversation(
    conversationTitle: "Conversation 2 : That's Too Late",
    assertSource: "voice/2.mp3",
  );
  _Conversation cConvo = _Conversation(
    conversationTitle: "Conversation 3 : Ordering Food",
    assertSource: "voice/3.mp3",
  );
  _Conversation dConvo = _Conversation(
    conversationTitle: "Conversation 4 : Now Or Later",
    assertSource: "voice/4.mp3",
  );
  _Conversation eConvo = _Conversation(
    conversationTitle: "Conversation 5 : Family Trip",
    assertSource: "voice/5.mp3",
  );
}
