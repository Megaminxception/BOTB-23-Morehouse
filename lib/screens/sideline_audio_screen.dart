import 'package:flutter/material.dart';
import 'package:chatgpt_course/widgets/audio_list.dart';

class SidelineAudioScreen extends StatefulWidget {
  int selectedIndex;
  SidelineAudioScreen({super.key, required this.selectedIndex});

  @override
  State<SidelineAudioScreen> createState() => _SidelineAudioScreenState();
}

class _SidelineAudioScreenState extends State<SidelineAudioScreen> {
  int tabSelection = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // Back Button
              children: [
                IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    print('Navigate back to base sideline screen');
                  },
                ),
                // Text Button
                TextButton(
                  onPressed: () {
                    setState(() {
                      widget.selectedIndex = 0;
                      tabSelection = 0;
                    });
                  },
                  child: Text(
                    'Cowboys',
                    style: TextStyle(
                      fontSize: 20,
                      color: tabSelection == 0
                          ? Theme.of(context).secondaryHeaderColor
                          : Theme.of(context).hintColor,
                      fontWeight: tabSelection == 0
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      widget.selectedIndex = 1;
                      tabSelection = 1;
                    });
                  },
                  child: Text(
                    '49ers',
                    style: TextStyle(
                      fontSize: 20,
                      color: tabSelection == 1
                          ? Theme.of(context).secondaryHeaderColor
                          : Theme.of(context).hintColor,
                      fontWeight: tabSelection == 1
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              child: AudioList(
                currentTab: tabSelection,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
