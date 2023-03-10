// Screen for when user wants to interact with Sideline feature

import 'package:nfl_sideline/screens/base_screen.dart';
import 'package:nfl_sideline/screens/chat_screen.dart';
import 'package:nfl_sideline/widgets/tabbedMenu.dart';
import 'package:flutter/material.dart';
import 'package:nfl_sideline/services/assets_manager.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';

class SidelineScreen extends StatefulWidget {
  const SidelineScreen({super.key});

  @override
  State<SidelineScreen> createState() => _SidelineScreenState();
}

class _SidelineScreenState extends State<SidelineScreen> {
  int _selectedIndex = 3;
  final pages = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Color selectedColor = Theme.of(context).secondaryHeaderColor;
    final Color unselectedColor = Theme.of(context).primaryColor;

    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10),
            child: Row(
              children: [
                Image.asset('assets/images/QR.png'),
                const Spacer(),
                ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Theme.of(context).focusColor),
                      elevation: MaterialStateProperty.all<double>(10.0),
                      shadowColor: MaterialStateProperty.all<Color>(
                          Theme.of(context).secondaryHeaderColor),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(unselectedColor)),
                  onPressed: () {},
                  child: const Text(
                    "Join the sidelines",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ChatScreen()));
                  },
                  child: Image.asset('assets/images/chat_bubble.png'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                bottom: 8.0, top: 15.0, left: 8.0, right: 8.0),
            child: Container(
              // height: MediaQuery.of(context).size.height / 2.265,
              child: ListView(
                shrinkWrap: true,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 10,
                    shadowColor: Theme.of(context).secondaryHeaderColor,
                    child: ListTile(
                      trailing: const Padding(
                        padding: EdgeInsets.only(right: 5),
                      ),
                      tileColor: Theme.of(context).focusColor,
                      contentPadding: const EdgeInsets.all(10),
                      title: const Text("I-Formation",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      subtitle: const Text(
                          "I-formation is a formation where the quarterback lines up directly behind the center, and the running back lines up directly behind the quarterback. There are two additional...",
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 10,
                    shadowColor: Theme.of(context).secondaryHeaderColor,
                    child: ListTile(
                      trailing: const Padding(
                        padding: EdgeInsets.only(right: 5),
                      ),
                      tileColor: Theme.of(context).focusColor,
                      contentPadding: const EdgeInsets.all(10),
                      title: const Text("Onside Kick",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      subtitle: const Text(
                          "An onside kick in the NFL is a type of kickoff where the kicking team intentionally kicks the ball only a short distance in an attempt to immediately regain...",
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 10,
                    shadowColor: Theme.of(context).secondaryHeaderColor,
                    child: ListTile(
                      trailing: const Padding(
                        padding: EdgeInsets.only(right: 5),
                      ),
                      tileColor: Theme.of(context).focusColor,
                      contentPadding: const EdgeInsets.all(10),
                      title: const Text("Dime",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      subtitle: const Text(
                          "In American football, a \"dime\" refers to a defensive package that entails six defensive backs, usually comprising four cornerbacks and two safeties...",
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(children: [
            const Padding(padding: EdgeInsets.all(10)),
            Image.asset('assets/images/Voice_Ai.png'),
            const Text(
              "Ask me about why Quarterbacks slide...",
              style:
                  TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
            ),
          ]),
        ],
      ),
    );
  }
}
