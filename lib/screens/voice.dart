// ignore_for_file: prefer_const_constructors

import 'package:elearning/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import 'dart:async';

import '../Home.dart';
import '../shared/widgets.dart';

const double _ICON_SIZE = 30;
final player = AudioPlayer();

class Voice extends StatelessWidget {
  Voice({super.key});

  @override
  Widget build(BuildContext context) {
    _initializeLocalConvos();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: MyWidgets.BtnToGo_Home(context),
        backgroundColor: MyColors.appBarColor,
        title: Text("Voice Zone"),
      ),
      body: Container(
        decoration: MyColors.background_BoxDecoration(),
        child: ListView.builder(
          itemCount: _Conversation.conversations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(10, 8, 10, 6),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(4),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: const [
                          Color.fromARGB(255, 13, 82, 139),
                          Color.fromARGB(255, 20, 117, 197),
                        ]),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: Text(
                          _Conversation.conversations[index]._conversationTitle,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          iconSize: _ICON_SIZE,
                          icon: Icon(Icons.play_arrow),
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
  _Conversation fConvo = _Conversation(
    conversationTitle: "Conversation 6 : Buying A Plane Ticket",
    assertSource: "voice/6.mp3",
  );
  _Conversation xConvo = _Conversation(
    conversationTitle: "Conversation 7 : Visiting Fmialy",
    assertSource: "voice/7.mp3",
  );
  _Conversation lConvo = _Conversation(
    conversationTitle: "Conversation 8 : I'm A Student",
    assertSource: "voice/8.mp3",
  );
}
