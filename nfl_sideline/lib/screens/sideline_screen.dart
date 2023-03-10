// Screen for when user wants to interact with Sideline feature

import 'package:nfl_sideline/screens/base_screen.dart';
import 'package:nfl_sideline/screens/chat_screen.dart';
import 'package:nfl_sideline/screens/sideline_audio_screen.dart';
import 'package:nfl_sideline/widgets/insightsList.dart';
import 'package:nfl_sideline/widgets/tabbedMenu.dart';
import 'package:flutter/material.dart';
import 'package:nfl_sideline/services/assets_manager.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nfl_sideline/widgets/voiceAssistant.dart';
import 'package:video_player/video_player.dart';

class SidelineScreen extends StatefulWidget {
  const SidelineScreen({super.key});

  @override
  State<SidelineScreen> createState() => _SidelineScreenState();
}

class _SidelineScreenState extends State<SidelineScreen> {
  int _selectedIndex = 3;
  final pages = [
    SidelineAudioScreen(
      selectedIndex: 0,
    )
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Color selectedColor = Theme.of(context).secondaryHeaderColor;
    final Color unselectedColor = Theme.of(context).primaryColor;

    if (_selectedIndex == -1) {
      return SidelineAudioScreen(
        selectedIndex: 0,
      );
    } else if (_selectedIndex == -2) {
      return Container(
          height: MediaQuery.of(context).size.height / 2.3,
          child: ChatScreen(
            selectedIndex: 0,
          ));
    } else {
      return Container(
        child: Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10),
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Row(
                  children: [
                    Image.asset('assets/images/QR.png'),
                    const Spacer(),
                    ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50))),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Theme.of(context).focusColor),
                          elevation: MaterialStateProperty.all<double>(10.0),
                          shadowColor: MaterialStateProperty.all<Color>(
                              Theme.of(context).secondaryHeaderColor),
                          foregroundColor: MaterialStateProperty.all<Color>(
                              unselectedColor)),
                      onPressed: () {
                        setState(() {
                          _selectedIndex = -1;
                        });
                      },
                      child: const Text(
                        "Join the sidelines",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = -2;
                        });
                      },
                      child: Image.asset('assets/images/chat_bubble.png'),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3.8,
              child: Padding(
                padding: const EdgeInsets.only(
                    bottom: 8.0, top: 15.0, left: 8.0, right: 8.0),
                child: InsightsList(),
              ),
            ),
            Center(child: VoiceAssistant())
          ],
        ),
      );
    }
  }
}
