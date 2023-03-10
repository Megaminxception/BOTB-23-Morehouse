// Base screen for tab based navigation within NFL plus

import 'package:nfl_sideline/screens/chat_screen.dart';
import 'package:nfl_sideline/screens/comment_screen.dart';
import 'package:nfl_sideline/screens/sideline_screen.dart';
import 'package:nfl_sideline/widgets/tabbedMenu.dart';
import 'package:flutter/material.dart';
import 'package:nfl_sideline/services/assets_manager.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int __selectedIndex = 2;
  final pages = [
    ChatScreen(
      selectedIndex: 0,
    ),
    ChatScreen(
      selectedIndex: 0,
    ),
    LiveChat(),
    SidelineScreen()
  ];
  late VideoPlayerController _controler;
  late Future<void> _init;

  @override
  void initState() {
    super.initState();
    _controler = VideoPlayerController.asset('assets/videos/Dak_Prescott.mp4');
    _init = _controler.initialize();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // mutes the video
      _controler.setVolume(0);
      // Plays the video once the widget is build and loaded.
      _controler.setLooping(true);
      _controler.play();
    });
  }

  @override
  Widget build(BuildContext context) {
    final Color selectedColor = Theme.of(context).secondaryHeaderColor;
    final Color unselectedColor = Theme.of(context).primaryColor;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            iconSize: 45,
            icon: Icon(Icons.circle),
            color: Colors.white,
            isSelected: true,
            onPressed: () {
              setState(() {});
              print('Navigate to combine page');
            },
          )
        ],
        leading: Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5, left: 20),
            child: SvgPicture.asset(AssetsManager.nflPlus,
                semanticsLabel: 'NFL Plus')),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: FutureBuilder(
                future: _init,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return AspectRatio(
                        aspectRatio: _controler.value.aspectRatio,
                        child: VideoPlayer(_controler));
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
          ),
          Container(
            color: Theme.of(context).focusColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Text Buttons for each tab, the button is underlined when selected
                TextButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text(
                    'Games',
                    style: TextStyle(
                      decoration: __selectedIndex == 0
                          ? TextDecoration.underline
                          : TextDecoration.none,
                      color: __selectedIndex == 0
                          ? Theme.of(context).secondaryHeaderColor
                          : Theme.of(context).hintColor,
                      fontWeight: __selectedIndex == 0
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text(
                    'Shows',
                    style: TextStyle(
                      decoration: __selectedIndex == 1
                          ? TextDecoration.underline
                          : TextDecoration.none,
                      color: __selectedIndex == 1
                          ? Theme.of(context).secondaryHeaderColor
                          : Theme.of(context).hintColor,
                      fontWeight: __selectedIndex == 1
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      __selectedIndex = 2;
                    });
                  },
                  child: Text(
                    'Chat',
                    style: TextStyle(
                      decoration: __selectedIndex == 2
                          ? TextDecoration.underline
                          : TextDecoration.none,
                      color: __selectedIndex == 2
                          ? Theme.of(context).secondaryHeaderColor
                          : Theme.of(context).hintColor,
                      fontWeight: __selectedIndex == 2
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      __selectedIndex = 3;
                    });
                  },
                  child: Text(
                    'Sideline',
                    style: TextStyle(
                      decoration: __selectedIndex == 3
                          ? TextDecoration.underline
                          : TextDecoration.none,
                      color: __selectedIndex == 3
                          ? Theme.of(context).secondaryHeaderColor
                          : Theme.of(context).hintColor,
                      fontWeight: __selectedIndex == 3
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          pages[__selectedIndex],
        ],
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height / 10,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Theme.of(context).focusColor,
            boxShadow: [BoxShadow(blurRadius: 4)]),
        child: Column(children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 7, right: 7),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: IconButton(
                      iconSize: 45,
                      icon: Icon(Icons.home),
                      color: __selectedIndex == 0
                          ? selectedColor
                          : unselectedColor,
                      onPressed: () {
                        setState(() {});
                        print('Navigate to home page');
                      },
                    )),
                    Expanded(
                        child: IconButton(
                      iconSize: 45,
                      icon: Icon(Icons.timer_rounded),
                      color: unselectedColor,
                      isSelected: true,
                      onPressed: () {
                        setState(() {});
                        print('Navigate to combine page');
                      },
                    )),
                    Expanded(
                        child: IconButton(
                      iconSize: 45,
                      icon: Icon(Icons.add),
                      color: selectedColor,
                      isSelected: true,
                      onPressed: () {
                        setState(() {});
                        print('Navigate to teams page');
                      },
                    )),
                    Expanded(
                        child: IconButton(
                      iconSize: 45,
                      icon: Icon(Icons.person),
                      color: unselectedColor,
                      isSelected: true,
                      onPressed: () {
                        setState(() {});
                        print('Navigate to combine page');
                      },
                    )),
                  ],
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
