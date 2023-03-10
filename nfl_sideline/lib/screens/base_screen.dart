// Base screen for tab based navigation within NFL plus

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
  int _selectedIndex = 2;
  final pages = [];
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
            color: _selectedIndex == 3 ? selectedColor : unselectedColor,
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
            child: TabbedMenu(selectedIndex: 2),
          ),
          const SidelineScreen(),
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
                      color:
                          _selectedIndex == 0 ? selectedColor : unselectedColor,
                      onPressed: () {
                        setState(() {});
                        print('Navigate to home page');
                      },
                    )),
                    Expanded(
                        child: IconButton(
                      iconSize: 45,
                      icon: Icon(Icons.timer_rounded),
                      color:
                          _selectedIndex == 1 ? selectedColor : unselectedColor,
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
                      color:
                          _selectedIndex == 2 ? selectedColor : unselectedColor,
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
                      color:
                          _selectedIndex == 3 ? selectedColor : unselectedColor,
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
